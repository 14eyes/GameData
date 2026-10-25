require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71076 = class("Quest71076", QuestActorProxy)
Quest71076.defaultAlias = "Quest71076"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71076:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71076:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7107601"] = self.OnSubStart7107601}
end

function Quest71076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7107601"] = self.OnSubFinish7107601}
end

function Quest71076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

Quest71076.NpcCheckDataDic = nil

function Quest71076:AddCheckNpcHeight(arg1, height, heightTolerance)
    local realAlias = self:GetRealAlias(arg1)
    if realAlias == nil then
        print("--not found npc :" .. arg1)
        return
    end

    if NG_HSOD_DEBUG then
        print("-->> AddCheckNpcHeight" .. arg1 .. "  prefH=" .. tostring(height))
    end

    local npcCheckData = {npcAlias = realAlias, height = height, heightTolerance = heightTolerance}
    if nil == self.NpcCheckDataDic then
        self.NpcCheckDataDic = {}
    end

    self.NpcCheckDataDic[arg1] = npcCheckData
    local n = 0
    for k, v in pairs(self.NpcCheckDataDic) do
        if k ~= nil and v ~= nil then
            n = n + 1
        end
    end

    if n == 1 then
        self:CallDelay(1, self.UpdateCheckNpcHeight)
    end
end

function Quest71076:RemoveCheckNpcHeight(arg1)
    if nil == self.NpcCheckDataDic then
        return
    end

    print("-->> RemoveCheckNpcHeight" .. arg1)
    self.NpcCheckDataDic[arg1] = nil
    local n = 0
    for k, npcCheckData in pairs(self.NpcCheckDataDic) do
        if k ~= nil and npcCheckData ~= nil then
            n = n + 1
        end
    end

    if 0 == n then
        self:UnCallFunc(self.UpdateCheckNpcHeight)
    end
end

function Quest71076:UpdateCheckNpcHeight()
    if self.NpcCheckDataDic == nil then
        return
    end

    for k, npcCheckData in pairs(self.NpcCheckDataDic) do
        if k ~= nil and npcCheckData ~= nil then
            self:RealCheckData(npcCheckData)
        end
    end

    self:CallDelay(1, self.UpdateCheckNpcHeight)
end

function Quest71076:RealCheckData(arg1)
    if arg1 == nil then
        return
    end

    local actorInternal = actorMgr:GetActorInternal(arg1.npcAlias)
    if actorInternal == nil then
        return
    end

    local pos = actorInternal:GetPos()
    if pos.y - arg1.height <= arg1.heightTolerance then
        pos.y = arg1.height
        actorInternal:SetPos(pos)
    end
end

function Quest71076:AddQuestNpcHeightCheck(arg1, id, arg3)
    local questConfigId = arg1.QuestConfigId
    local npcs = self.shareData:GetQuestData(questConfigId).npcs
    if npcs == nil then
        return
    end

    local v
    local count = #npcs
    if arg3 == nil or arg3 == 0 then
        for i = 1, count do
            local v2 = npcs[i]
            if v2 ~= nil then
                if id ~= nil then
                    if v2.id == id then
                        v = v2
                        break
                    end
                else
                    v = v2
                    break
                end
            end
        end
    elseif arg3 <= count then
        v = npcs[arg3]
    else
        return
    end

    if v ~= nil then
        local dummyPoint = sceneData:GetDummyPoint(v.scene_id, v.pos)
        if dummyPoint ~= nil then
            self:AddCheckNpcHeight(v.alias, dummyPoint.pos.y, -0.5)
        end
    end
end

function Quest71076:AddAllNpcHeightCheck(arg1)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20536Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20551Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20550Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20549Data.id)
end

function Quest71076:ClearAllNpcHeightCheck()
    self:UnCallFunc(self.UpdateCheckNpcHeight)
    self.NpcCheckDataDic = nil
end

function Quest71076:OnSubStart7107601(allNpcHeightCheck)
    print("OnSubStart7107601")
    self:AddAllNpcHeightCheck(allNpcHeightCheck)
end

function Quest71076:OnSubFinish7107601(arg1)
    print("OnSubFinish7107601")
    self:ClearAllNpcHeightCheck()
end

return Quest71076
