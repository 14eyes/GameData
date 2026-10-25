require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71810 = class("Quest71810", QuestActorProxy)
Quest71810.defaultAlias = "Quest71810"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest71810:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71810:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181001"] = self.OnSubStart7181001,
        ["7181002"] = self.OnSubStart7181002,
        ["7181003"] = self.OnSubStart7181003,
        ["7181004"] = self.OnSubStart7181004,
        ["7181005"] = self.OnSubStart7181005,
        ["7181006"] = self.OnSubStart7181006,
        ["7181007"] = self.OnSubStart7181007,
        ["7181008"] = self.OnSubStart7181008,
        ["7181009"] = self.OnSubStart7181009
    }
end

function Quest71810:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181001"] = self.OnSubFinish7181001,
        ["7181002"] = self.OnSubFinish7181002,
        ["7181003"] = self.OnSubFinish7181003,
        ["7181004"] = self.OnSubFinish7181004,
        ["7181005"] = self.OnSubFinish7181005,
        ["7181006"] = self.OnSubFinish7181006,
        ["7181007"] = self.OnSubFinish7181007,
        ["7181008"] = self.OnSubFinish7181008,
        ["7181009"] = self.OnSubFinish7181009
    }
end

function Quest71810:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181001"] = self.OnSubFailed7181001,
        ["7181002"] = self.OnSubFailed7181002,
        ["7181003"] = self.OnSubFailed7181003,
        ["7181004"] = self.OnSubFailed7181004,
        ["7181005"] = self.OnSubFailed7181005,
        ["7181006"] = self.OnSubFailed7181006,
        ["7181007"] = self.OnSubFailed7181007,
        ["7181008"] = self.OnSubFailed7181008,
        ["7181009"] = self.OnSubFailed7181009
    }
end

function Quest71810:Start()
    print("Start")
end

function Quest71810:OnDestroy()
    print("OnDestroy")
end

function Quest71810:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71810:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71810:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71810:DestroyNpc()
    print("DestroyNpc")
    self:DestroyQuestNpcActor(npcs.NPC20088Data1.alias, 3)
end

function Quest71810:PlayerTransmit()
    print("PlayerTransmit")
    self:CreateQuestNpcById(7181002, npcs.NPC20088Data2.id, 1)
    self:TransmitPlayerByQuestId(7181002, 1, self.NpcInteraction)
end

function Quest71810:NpcInteraction()
    print("NpcInteraction")
    self:RequestInteraction(npcs.NPC20088Data2.alias)
end

function Quest71810:OpenCompass()
    Quest71810:CallOnElemViewOpen(function()
        print("ElemViewOpen")
        local pos = points.Target4.pos
        local actor = actorMgr:GetActor(actorAlias)
        if pos ~= nil then
            local avatarPos = actorUtils.GetAvatarPos()
            local n = math.sqrt((avatarPos.x - pos.x) ^ 2 + (avatarPos.y - pos.y) ^ 2 + (avatarPos.z - pos.z) ^ 2)
            print("71810\231\155\174\230\160\135\232\183\157\231\166\187\239\188\154" .. n)
            if 150 < n then
                print("\232\183\157\231\166\187\229\164\167\228\186\142150\239\188\140\228\184\141\230\137\167\232\161\140\229\144\142\231\187\173")
            else
                local tbl = {x = pos.x - avatarPos.x, y = 0, z = pos.z - avatarPos.z}
                local avatarForward = actorUtils.GetAvatarForward()
                local v = 2
                local avatarPos2 = actorUtils.GetAvatarPos()
                avatarPos2.x = avatarPos2.x + avatarForward.x * v
                avatarPos2.y = avatarPos2.y + 0.4
                avatarPos2.z = avatarPos2.z + avatarForward.z * v
                actorMgr:GetActor(actorAlias):SpawnGadgetByIdWithPos(7181004, 70700006, 1, avatarPos2, M.Dir2Euler(tbl))
            end

            Quest71810:CloseCompass()
        end
    end)
end

function Quest71810:CloseCompass()
    Quest71810:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q71810Hint")
        Quest71810:OpenCompass()
    end)
end

function Quest71810:PlayerTransmit2()
    print("PlayerTransmit2")
    self:CreateQuestNpcById(7181008, npcs.NPC20088Data3.id, 1)
    self:TransmitPlayerByQuestId(7181008, 1, self.NpcInteraction)
end

function Quest71810:OnSubStart7181001(arg1)
    print("OnSubStart7181001")
    self:CreateQuestNpc(arg1, npcs.NPC20088Data1.id, 1)
end

function Quest71810:OnSubFinish7181001(arg1)
    print("OnSubFinish7181001")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest71810:OnSubFailed7181001(arg1)
    print("OnSubFailed7181001")
end

function Quest71810:OnSubStart7181002(arg1)
    print("OnSubStart7181002")
end

function Quest71810:OnSubFinish7181002(arg1)
    print("OnSubFinish7181002")
    self:CallDelay(2, self.PlayerTransmit)
end

function Quest71810:OnSubFailed7181002(arg1)
    print("OnSubFailed7181002")
end

function Quest71810:OnSubStart7181003(arg1)
    print("OnSubStart7181003")
end

function Quest71810:OnSubFinish7181003(arg1)
    print("OnSubFinish7181003")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest71810:OnSubFailed7181003(arg1)
    print("OnSubFailed7181003")
end

function Quest71810:OnSubStart7181004(arg1)
    print("OnSubStart7181004")
end

function Quest71810:OnSubFinish7181004(arg1)
    print("OnSubFinish7181004")
end

function Quest71810:OnSubFailed7181004(arg1)
    print("OnSubFailed7181004")
end

function Quest71810:OnSubStart7181005(arg1)
    print("7181005 start:Set TargetPos")
    local target1 = points.Target1
    self:OpenCompass()
end

function Quest71810:OnSubFinish7181005(arg1)
    print("OnSubFinish7181005")
    self:NarratorOnlyTask(datas.AlraniReminder, nil, "")
end

function Quest71810:OnSubFailed7181005(arg1)
    print("OnSubFailed7181005")
end

function Quest71810:OnSubStart7181006(arg1)
    print("7181006 start:Set TargetPos")
    local target2 = points.Target2
    self:OpenCompass()
end

function Quest71810:OnSubFinish7181006(arg1)
    print("OnSubFinish7181006")
end

function Quest71810:OnSubFailed7181006(arg1)
    print("OnSubFailed7181006")
end

function Quest71810:OnSubStart7181007(arg1)
    print("7181007 start:Set TargetPos")
    local target3 = points.Target3
    self:OpenCompass()
end

function Quest71810:OnSubFinish7181007(arg1)
    print("OnSubFinish7181007")
end

function Quest71810:OnSubFailed7181007(arg1)
    print("OnSubFailed7181007")
end

function Quest71810:OnSubStart7181008(arg1)
    print("OnSubStart7181008")
end

function Quest71810:OnSubFinish7181008(arg1)
    print("OnSubFinish7181008")
    self:CallDelay(2, self.PlayerTransmit2)
end

function Quest71810:OnSubFailed7181008(arg1)
    print("OnSubFailed7181008")
end

function Quest71810:OnSubStart7181009(arg1)
    print("OnSubStart7181009")
end

function Quest71810:OnSubFinish7181009(arg1)
    print("OnSubFinish7181009")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest71810:OnSubFailed7181009(arg1)
    print("OnSubFailed7181009")
end

return Quest71810
