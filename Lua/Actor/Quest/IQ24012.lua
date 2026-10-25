require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24012 = class("Quest24012", QuestActorProxy)
Quest24012.defaultAlias = "Quest24012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401201"] = self.OnSubStart2401201,
        ["2401215"] = self.OnSubStart2401215,
        ["2401202"] = self.OnSubStart2401202,
        ["2401203"] = self.OnSubStart2401203,
        ["2401204"] = self.OnSubStart2401204,
        ["2401213"] = self.OnSubStart2401213,
        ["2401205"] = self.OnSubStart2401205,
        ["2401206"] = self.OnSubStart2401206,
        ["2401207"] = self.OnSubStart2401207,
        ["2401208"] = self.OnSubStart2401208,
        ["2401212"] = self.OnSubStart2401212,
        ["2401214"] = self.OnSubStart2401214,
        ["2401209"] = self.OnSubStart2401209,
        ["2401210"] = self.OnSubStart2401210,
        ["2401216"] = self.OnSubStart2401216,
        ["2401217"] = self.OnSubStart2401217,
        ["2401218"] = self.OnSubStart2401218,
        ["2401211"] = self.OnSubStart2401211
    }
end

function Quest24012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401201"] = self.OnSubFinish2401201,
        ["2401215"] = self.OnSubFinish2401215,
        ["2401202"] = self.OnSubFinish2401202,
        ["2401203"] = self.OnSubFinish2401203,
        ["2401204"] = self.OnSubFinish2401204,
        ["2401213"] = self.OnSubFinish2401213,
        ["2401205"] = self.OnSubFinish2401205,
        ["2401206"] = self.OnSubFinish2401206,
        ["2401207"] = self.OnSubFinish2401207,
        ["2401208"] = self.OnSubFinish2401208,
        ["2401212"] = self.OnSubFinish2401212,
        ["2401214"] = self.OnSubFinish2401214,
        ["2401209"] = self.OnSubFinish2401209,
        ["2401210"] = self.OnSubFinish2401210,
        ["2401216"] = self.OnSubFinish2401216,
        ["2401217"] = self.OnSubFinish2401217,
        ["2401218"] = self.OnSubFinish2401218,
        ["2401211"] = self.OnSubFinish2401211
    }
end

function Quest24012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2401213"] = self.OnSubFailed2401213}
end

function Quest24012:Start()
    print("Start")
end

function Quest24012:OnDestroy()
    print("OnDestroy")
end

function Quest24012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24012:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5053Data.alias, 24012)
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13357Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5043Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2401204N5053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2401212N5053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2401214N5053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2401209N5053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2401211N5053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q24012Trigger", 3, false)
    this:RemoveLocalGadget(707111126, "2401204")
end

function Quest24012:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest24012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest24012:OnSubStart2401201(arg1)
    print("OnSubStart2401201")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
end

function Quest24012:OnSubFinish2401201(arg1)
    print("OnSubFinish2401201")
end

function Quest24012:OnSubStart2401215(arg1)
    print("OnSubStart2401215")
end

function Quest24012:OnSubFinish2401215(arg1)
    print("OnSubFinish2401215")
end

function Quest24012:OnSubStart2401202(arg1)
    print("OnSubStart2401202")
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
end

function Quest24012:OnSubFinish2401202(arg1)
    print("OnSubFinish2401202")
end

function Quest24012:OnSubStart2401203(arg1)
    print("OnSubStart2401203")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13357Data.id, 0)
    this:CreateLocalGadget(707111126, "2401204", {x = 3515.761, y = 422.588, z = 4601.633}, {x = 0.0, y = 341.042, z = 0.0}, 3, nil, nil, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    end)
end

function Quest24012:OnSubFinish2401203(arg1)
    print("OnSubFinish2401203")
    this:SafeDestroyQuestNpc(npcs.Npc13357Data.alias, 3)
end

function Quest24012:OnSubStart2401204(arg1)
    print("OnSubStart2401204")
    this:NpcCreateWithNpcTrigger(npcs.Npc5053Data.id, 2401204, 0, 10)
    this:CreateLocalGadget(707111126, "2401204", {x = 3515.761, y = 422.588, z = 4601.633}, {x = 0.0, y = 341.042, z = 0.0}, 3, nil, nil, false)
end

function Quest24012:OnSubFinish2401204(arg1)
    print("OnSubFinish2401204")
    this:RemoveLocalGadget(707111126, "2401204")
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
end

function Quest24012:OnSubStart2401213(arg1)
    print("OnSubStart2401213")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5053Data.alias, 24012)
    this:NpcForceAvatarWalkByDist(questNpcActor, 4, 5)
    actorMgr:CreateActorWithPos("Q24012Trigger", "Actor/Gadget/Q24012Trigger", 70900002, 0, {x = 3516.752, y = 423.671, z = 4599.335}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest24012:OnSubFinish2401213(arg1)
    print("OnSubFinish2401213")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5053Data.alias, 24012)
    this:NpcResetForceAvatarWalk(questNpcActor)
    actorMgr:DestroyEntityActor("Q24012Trigger", 3, false)
end

function Quest24012:OnSubFailed2401213(arg1)
    print("OnSubFailed2401213")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5053Data.alias, 24012)
    this:NpcResetForceAvatarWalk(questNpcActor)
    actorMgr:DestroyEntityActor("Q24012Trigger", 3, false)
end

function Quest24012:OnSubStart2401205(arg1)
    print("OnSubStart2401205")
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24012:OnSubFinish2401205(arg1)
    print("OnSubFinish2401205")
end

function Quest24012:OnSubStart2401206(arg1)
    print("OnSubStart2401206")
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24012:OnSubFinish2401206(arg1)
    print("OnSubFinish2401206")
end

function Quest24012:OnSubStart2401207(arg1)
    print("OnSubStart2401207")
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24012:OnSubFinish2401207(arg1)
    print("OnSubFinish2401207")
end

function Quest24012:OnSubStart2401208(arg1)
    print("OnSubStart2401208")
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24012:OnSubFinish2401208(arg1)
    print("OnSubFinish2401208")
end

function Quest24012:OnSubStart2401212(arg1)
    print("OnSubStart2401212")
    this:NpcCreateWithNpcTrigger(npcs.Npc5053Data.id, 2401212, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
end

function Quest24012:OnSubFinish2401212(arg1)
    print("OnSubFinish2401212")
end

function Quest24012:OnSubStart2401214(arg1)
    print("OnSubStart2401214")
    this:NpcCreateWithNpcTrigger(npcs.Npc5053Data.id, 2401214, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
end

function Quest24012:OnSubFinish2401214(arg1)
    print("OnSubFinish2401214")
end

function Quest24012:OnSubStart2401209(arg1)
    print("OnSubStart2401209")
    this:NpcCreateWithNpcTrigger(npcs.Npc5053Data.id, 2401209, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
end

function Quest24012:OnSubFinish2401209(arg1)
    print("OnSubFinish2401209")
end

function Quest24012:OnSubStart2401210(arg1)
    print("OnSubStart2401210")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5054Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:CreateSpeechBubbleTask(npcs.Npc5054Data.id, 240129901, 3, true, 5, 10)
    this:GetQuestNpcActor(npcs.Npc5054Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1320, true, nil, true, true, true, true)
end

function Quest24012:OnSubFinish2401210(arg1)
    print("OnSubFinish2401210")
    this:CreateSpeechBubbleTask(npcs.Npc5054Data.id, 240129903, 5, false, 0, 0)
end

function Quest24012:OnSubStart2401216(arg1)
    print("OnSubStart2401216")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5043Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc5043Data.id, 240129902, 3, true, 10, 15)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1320, true, nil, true, true, true, true)
end

function Quest24012:OnSubFinish2401216(arg1)
    print("OnSubFinish2401216")
    this:CreateSpeechBubbleTask(npcs.Npc5043Data.id, 240129904, 5, false, 0, 0)
end

function Quest24012:OnSubStart2401217(arg1)
    print("OnSubStart2401217")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5054Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:CreateSpeechBubbleTask(npcs.Npc5054Data.id, 240129901, 3, true, 5, 10)
    this:GetQuestNpcActor(npcs.Npc5054Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1320, true, nil, true, true, true, true)
end

function Quest24012:OnSubFinish2401217(arg1)
    print("OnSubFinish2401217")
    this:CreateSpeechBubbleTask(npcs.Npc5054Data.id, 240129903, 5, false, 0, 0)
end

function Quest24012:OnSubStart2401218(arg1)
    print("OnSubStart2401218")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5043Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc5043Data.id, 240129902, 3, true, 10, 15)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1320, true, nil, true, true, true, true)
end

function Quest24012:OnSubFinish2401218(arg1)
    print("OnSubFinish2401218")
    this:CreateSpeechBubbleTask(npcs.Npc5043Data.id, 240129904, 5, false, 0, 0)
end

function Quest24012:OnSubStart2401211(arg1)
    print("OnSubStart2401211")
    this:NpcCreateWithNpcTrigger(npcs.Npc5053Data.id, 2401211, 0, 4)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1320, true, nil, true, true, true, true)
end

function Quest24012:OnSubFinish2401211(arg1)
    print("OnSubFinish2401211")
    this:ClearSpeechBubbleTask()
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5043Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
end

return Quest24012
