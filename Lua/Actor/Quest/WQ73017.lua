require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73017 = class("Quest73017", QuestActorProxy)
Quest73017.defaultAlias = "Quest73017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301701"] = self.OnSubStart7301701,
        ["7301713"] = self.OnSubStart7301713,
        ["7301702"] = self.OnSubStart7301702,
        ["7301703"] = self.OnSubStart7301703,
        ["7301704"] = self.OnSubStart7301704,
        ["7301715"] = self.OnSubStart7301715,
        ["7301710"] = self.OnSubStart7301710,
        ["7301716"] = self.OnSubStart7301716,
        ["7301712"] = self.OnSubStart7301712,
        ["7301714"] = self.OnSubStart7301714,
        ["7301707"] = self.OnSubStart7301707,
        ["7301708"] = self.OnSubStart7301708,
        ["7301709"] = self.OnSubStart7301709,
        ["7301711"] = self.OnSubStart7301711,
        ["7301706"] = self.OnSubStart7301706,
        ["7301705"] = self.OnSubStart7301705
    }
end

function Quest73017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301701"] = self.OnSubFinish7301701,
        ["7301713"] = self.OnSubFinish7301713,
        ["7301702"] = self.OnSubFinish7301702,
        ["7301703"] = self.OnSubFinish7301703,
        ["7301704"] = self.OnSubFinish7301704,
        ["7301715"] = self.OnSubFinish7301715,
        ["7301710"] = self.OnSubFinish7301710,
        ["7301716"] = self.OnSubFinish7301716,
        ["7301712"] = self.OnSubFinish7301712,
        ["7301714"] = self.OnSubFinish7301714,
        ["7301707"] = self.OnSubFinish7301707,
        ["7301708"] = self.OnSubFinish7301708,
        ["7301709"] = self.OnSubFinish7301709,
        ["7301711"] = self.OnSubFinish7301711,
        ["7301706"] = self.OnSubFinish7301706,
        ["7301705"] = self.OnSubFinish7301705
    }
end

function Quest73017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7301712"] = self.OnSubFailed7301712}
end

function Quest73017:Start()
    print("Start")
end

function Quest73017:OnDestroy()
    print("OnDestroy")
end

function Quest73017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73017:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73017:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7301712)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7301712)
    end
end

function Quest73017:OnSubStart7301701(arg1)
    print("OnSubStart7301701")
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 1)
    actorMgr:CreateActorWithPos("Q73017Trigger", "Actor/Gadget/Q73017Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301701").pos, sceneData:GetDummyPoint(3, "guide_Q7301701").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73017TriggerReminder1", "Actor/Gadget/Q73017TriggerReminder1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301701_reminder").pos, sceneData:GetDummyPoint(3, "guide_Q7301701_reminder").rot, true, false, 3)
end

function Quest73017:OnSubFinish7301701(arg1)
    print("OnSubFinish7301701")
    self:GetQuestNpcActor(npcs.Npc20608Data.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73017:OnSubStart7301713(arg1)
    print("OnSubStart7301713")
end

function Quest73017:OnSubFinish7301713(arg1)
    print("OnSubFinish7301713")
end

function Quest73017:OnSubStart7301702(arg1)
    print("OnSubStart7301702")
    self:NpcCreateWithTriggerBlack(npcs.Npc20608Data.id, 7301702, 1)
end

function Quest73017:OnSubFinish7301702(arg1)
    print("OnSubFinish7301702")
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73017:OnSubStart7301703(arg1)
    print("OnSubStart7301703")
    actorMgr:CreateActorWithPos("Q73017Trigger1", "Actor/Gadget/Q73017Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301703").pos, sceneData:GetDummyPoint(3, "guide_Q7301703").rot, true, false, 3)
end

function Quest73017:OnSubFinish7301703(arg1)
    print("OnSubFinish7301703")
end

function Quest73017:OnSubStart7301704(arg1)
    print("OnSubStart7301704")
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 1)
    self:RequestInteraction(npcs.Npc20608Data.alias)
end

function Quest73017:OnSubFinish7301704(arg1)
    print("OnSubFinish7301704")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73017:OnSubStart7301715(arg1)
    print("OnSubStart7301715")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20608Data.alias):ShowNpcWithLevelTagId(56, false)
    end)
end

function Quest73017:OnSubFinish7301715(arg1)
    print("OnSubFinish7301715")
end

function Quest73017:OnSubStart7301710(arg1)
    print("OnSubStart7301710")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20608Data.alias):ShowNpcWithLevelTagId(56, false)
    end)
end

function Quest73017:OnSubFinish7301710(arg1)
    print("OnSubFinish7301710")
    self:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73017:OnSubStart7301716(arg1)
    print("OnSubStart7301716")
end

function Quest73017:OnSubFinish7301716(arg1)
    print("OnSubFinish7301716")
end

function Quest73017:OnSubStart7301712(arg1)
    print("OnSubStart7301712")
end

function Quest73017:OnSubFinish7301712(arg1)
    print("OnSubFinish7301712")
    self:TransmitPlayerWithTextByQuestId(7301712, 1, datas.TextmapId, 2)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20608Data.alias)
    questNpcActor:DestroyWithDisappear(false)
    questNpcActor:CancelShowNpcWithLevelTagId()
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73017:OnSubFailed7301712(arg1)
    print("OnSubFailed7301712")
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73017:OnSubStart7301714(arg1)
    print("OnSubStart7301714")
    actorMgr:CreateActorWithPos("Q73017TriggerQ14", "Actor/Gadget/Q73017TriggerQ14", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301516_player").pos, sceneData:GetDummyPoint(3, "Q7301516_player").rot, true, false, 3)
end

function Quest73017:OnSubFinish7301714(arg1)
    print("OnSubFinish7301714")
end

function Quest73017:OnSubStart7301707(arg1)
    print("OnSubStart7301707")
end

function Quest73017:OnSubFinish7301707(arg1)
    print("OnSubFinish7301707")
end

function Quest73017:OnSubStart7301708(arg1)
    print("OnSubStart7301708")
end

function Quest73017:OnSubFinish7301708(arg1)
    print("OnSubFinish7301708")
end

function Quest73017:OnSubStart7301709(arg1)
    print("OnSubStart7301709")
end

function Quest73017:OnSubFinish7301709(arg1)
    print("OnSubFinish7301709")
end

function Quest73017:OnSubStart7301711(arg1)
    print("OnSubStart7301711")
end

function Quest73017:OnSubFinish7301711(arg1)
    print("OnSubFinish7301711")
    self:ShowBlackScreen(0.5, 5, 0.5, nil, nil, nil, "QUEST_Message_Q2017091", false, true)
end

function Quest73017:OnSubStart7301706(arg1)
    print("OnSubStart7301706")
end

function Quest73017:OnSubFinish7301706(arg1)
    print("OnSubFinish7301706")
end

function Quest73017:OnSubStart7301705(arg1)
    print("OnSubStart7301705")
end

function Quest73017:OnSubFinish7301705(arg1)
    print("OnSubFinish7301705")
end

return Quest73017
