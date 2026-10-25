require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71062 = class("Quest71062", QuestActorProxy)
Quest71062.defaultAlias = "Quest71062"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71062:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106212"] = self.OnSubStart7106212,
        ["7106213"] = self.OnSubStart7106213,
        ["7106201"] = self.OnSubStart7106201,
        ["7106209"] = self.OnSubStart7106209,
        ["7106202"] = self.OnSubStart7106202,
        ["7106203"] = self.OnSubStart7106203,
        ["7106204"] = self.OnSubStart7106204,
        ["7106205"] = self.OnSubStart7106205,
        ["7106206"] = self.OnSubStart7106206,
        ["7106210"] = self.OnSubStart7106210,
        ["7106211"] = self.OnSubStart7106211,
        ["7106207"] = self.OnSubStart7106207
    }
end

function Quest71062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106212"] = self.OnSubFinish7106212,
        ["7106213"] = self.OnSubFinish7106213,
        ["7106201"] = self.OnSubFinish7106201,
        ["7106209"] = self.OnSubFinish7106209,
        ["7106202"] = self.OnSubFinish7106202,
        ["7106203"] = self.OnSubFinish7106203,
        ["7106204"] = self.OnSubFinish7106204,
        ["7106205"] = self.OnSubFinish7106205,
        ["7106206"] = self.OnSubFinish7106206,
        ["7106210"] = self.OnSubFinish7106210,
        ["7106211"] = self.OnSubFinish7106211,
        ["7106207"] = self.OnSubFinish7106207
    }
end

function Quest71062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71062:Start()
    print("Start")
end

function Quest71062:OnDestroy()
    print("OnDestroy")
end

function Quest71062:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearAllNpcHeightCheck()
end

function Quest71062:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71062:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71062:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71062:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

Quest71062.NpcCheckDataDic = nil

function Quest71062:AddCheckNpcHeight(arg1, height, heightTolerance)
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

function Quest71062:RemoveCheckNpcHeight(arg1)
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

function Quest71062:UpdateCheckNpcHeight()
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

function Quest71062:RealCheckData(arg1)
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

function Quest71062:AddQuestNpcHeightCheck(arg1, id, arg3)
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

function Quest71062:AddAllNpcHeightCheck(arg1)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20536Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20551Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20550Data.id)
    self:AddQuestNpcHeightCheck(arg1, npcs.Npc20549Data.id)
end

function Quest71062:ClearAllNpcHeightCheck()
    self:UnCallFunc(self.UpdateCheckNpcHeight)
    self.NpcCheckDataDic = nil
end

function Quest71062:OnSubStart7106212(allNpcHeightCheck)
    print("OnSubStart7106212")
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20536Data.id, 1)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20551Data.id, 2)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20550Data.id, 3)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20549Data.id, 4)
    self:AddAllNpcHeightCheck(allNpcHeightCheck)
end

function Quest71062:OnSubFinish7106212(arg1)
    print("OnSubFinish7106212")
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnSubStart7106213(arg1)
    print("OnSubStart7106213")
end

function Quest71062:OnSubFinish7106213(arg1)
    print("OnSubFinish7106213")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest71062:OnSubStart7106201(arg1)
    print("OnSubStart7106201")
end

function Quest71062:OnSubFinish7106201(arg1)
    print("OnSubFinish7106201")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:TransmitPlayerById(arg1, 1)
    self:SetQuestVarByMainId(0, 1)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(npcs.Npc20536Data.alias)
    end)
end

function Quest71062:OnSubStart7106209(arg1)
    print("OnSubStart7106209")
    self:NpcDestroy(npcs.Npc20536Data.alias, 6)
    self:NpcDestroy(npcs.Npc20551Data.alias, 6)
    self:NpcDestroy(npcs.Npc20550Data.alias, 6)
    self:NpcDestroy(npcs.Npc20549Data.alias, 6)
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnSubFinish7106209(arg1)
    print("OnSubFinish7106209")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest71062:OnSubStart7106202(allNpcHeightCheck)
    print("OnSubStart7106202")
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20536Data.id, 1)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20551Data.id, 2)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20550Data.id, 3)
    self:CreateQuestNpc(allNpcHeightCheck, npcs.Npc20549Data.id, 4)
    self:AddAllNpcHeightCheck(allNpcHeightCheck)
end

function Quest71062:OnSubFinish7106202(arg1)
    print("OnSubFinish7106202")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20536Data.alias)
    self:NpcDestroy(npcs.Npc20551Data.alias, 6)
    self:NpcDestroy(npcs.Npc20550Data.alias, 6)
    self:NpcDestroy(npcs.Npc20549Data.alias, 6)
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnSubStart7106203(allNpcHeightCheck)
    print("OnSubStart7106203")
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20536Data.id, 1)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20551Data.id, 2)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20550Data.id, 3)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20549Data.id, 4)
    self:AddAllNpcHeightCheck(allNpcHeightCheck)
end

function Quest71062:OnSubFinish7106203(arg1)
    print("OnSubFinish7106203")
    self:NpcDestroy(npcs.Npc20536Data.alias, 6)
    self:NpcDestroy(npcs.Npc20551Data.alias, 6)
    self:NpcDestroy(npcs.Npc20550Data.alias, 6)
    self:NpcDestroy(npcs.Npc20549Data.alias, 6)
    self:ClearAllNpcHeightCheck()
end

function Quest71062:OnSubStart7106204(arg1)
    print("OnSubStart7106204")
end

function Quest71062:OnSubFinish7106204(allNpcHeightCheck)
    print("OnSubFinish7106204")
    self:NpcCreateWithBlackscreen(allNpcHeightCheck, npcs.Npc20536Data.id, 1)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20551Data.id, 2)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20550Data.id, 3)
    self:NpcCreate(allNpcHeightCheck, npcs.Npc20549Data.id, 4)
    self:AddAllNpcHeightCheck(allNpcHeightCheck)
end

function Quest71062:OnSubStart7106205(arg1)
    print("OnSubStart7106205")
end

function Quest71062:OnSubFinish7106205(arg1)
    print("OnSubFinish7106205")
end

function Quest71062:OnSubStart7106206(arg1)
    print("OnSubStart7106206")
end

function Quest71062:OnSubFinish7106206(arg1)
    print("OnSubFinish7106206")
end

function Quest71062:OnSubStart7106210(arg1)
    print("OnSubStart7106210")
end

function Quest71062:OnSubFinish7106210(arg1)
    print("OnSubFinish7106210")
end

function Quest71062:OnSubStart7106211(arg1)
    print("OnSubStart7106211")
end

function Quest71062:OnSubFinish7106211(arg1)
    print("OnSubFinish7106211")
end

function Quest71062:OnSubStart7106207(arg1)
    print("OnSubStart7106207")
    actorMgr:CreateActorWithPos("Q71062Trigger", "Actor/Gadget/Q71062Trigger", 70900002, 0, sceneData:GetDummyPoint(6, "Q7106212_N20536").pos, sceneData:GetDummyPoint(6, "Q7106212_N20536").rot, true, false, 6)
end

function Quest71062:OnSubFinish7106207(arg1)
    print("OnSubFinish7106207")
end

return Quest71062
