require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19187 = class("Quest19187", QuestActorProxy)
Quest19187.defaultAlias = "Quest19187"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19187:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1918701"] = self.OnSubStart1918701,
        ["1918702"] = self.OnSubStart1918702,
        ["1918703"] = self.OnSubStart1918703,
        ["1918705"] = self.OnSubStart1918705
    }
end

function Quest19187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1918701"] = self.OnSubFinish1918701,
        ["1918702"] = self.OnSubFinish1918702,
        ["1918703"] = self.OnSubFinish1918703,
        ["1918705"] = self.OnSubFinish1918705
    }
end

function Quest19187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1918701"] = self.OnSubFailed1918701}
end

function Quest19187:Start()
    print("Start")
end

function Quest19187:OnDestroy()
    print("OnDestroy")
end

function Quest19187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19187:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5033Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1918701Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918703Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1918705Trigger", 3, false)
    if self:IsPlayerSitOnChair(3, M.Pos(3488.195, 429.8337, 4607.405), 2.5) then
        self.uActor:PlayerStandFromChair(0)
    end
end

function Quest19187:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19187:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19187:OnSubStart1918701(arg1)
    print("OnSubStart1918701")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918701)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13937Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14016Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918701Trigger", "Actor/Gadget/Q1918701Trigger", 70900002, 0, points.TPos_Q1918701Trigger.pos, points.TPos_Q1918701Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(4121, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest19187:OnSubFinish1918701(arg1)
    print("OnSubFinish1918701")
    this:DestroyQuestNpcActor(npcs.Npc518Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14016Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1071Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1081Data.alias, 3)
end

function Quest19187:OnSubFailed1918701(arg1)
    print("OnSubFailed1918701")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest19187:OnSubStart1918702(arg1)
    print("OnSubStart1918702")
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:QuestNarratorTask(datas.NarratorWithId)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13937Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, true, false)
end

function Quest19187:OnSubFinish1918702(arg1)
    print("OnSubFinish1918702")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest19187:OnSubStart1918703(arg1)
    print("OnSubStart1918703")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918703)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14016Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5033Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918703Trigger", "Actor/Gadget/Q1918703Trigger", 70900002, 0, points.TPos_Q1918703Trigger.pos, points.TPos_Q1918703Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(4121, true, nil, true, true, true, false)
end

function Quest19187:OnSubFinish1918703(arg1)
    print("OnSubFinish1918703")
    this:DestroyQuestNpcActor(npcs.Npc518Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14016Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1071Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1081Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13937Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5033Data.alias, 0, true)
end

function Quest19187:OnSubStart1918705(arg1)
    print("OnSubStart1918705")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918705)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14016Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5079Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13942Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13937Data.id, 0)
    actorMgr:CreateActorWithPos("Q1918705Trigger", "Actor/Gadget/Q1918705Trigger", 70900002, 0, points.TPos_Q1918705Trigger.pos, points.TPos_Q1918705Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc518Data.alias):DoFreeStyle(1220, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc13937Data.alias):DoFreeStyle(4121, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc14016Data.alias):DoFreeStyle(4121, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1190, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, true, false)
end

function Quest19187:OnSubFinish1918705(arg1)
    print("OnSubFinish1918705")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13942Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
end

return Quest19187
