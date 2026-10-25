require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16002 = class("Quest16002", QuestActorProxy)
Quest16002.defaultAlias = "Quest16002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest16002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest16002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1600201"] = self.OnSubStart1600201,
        ["1600202"] = self.OnSubStart1600202,
        ["1600203"] = self.OnSubStart1600203,
        ["1600204"] = self.OnSubStart1600204,
        ["1600215"] = self.OnSubStart1600215,
        ["1600205"] = self.OnSubStart1600205,
        ["1600206"] = self.OnSubStart1600206,
        ["1600207"] = self.OnSubStart1600207,
        ["1600208"] = self.OnSubStart1600208,
        ["1600209"] = self.OnSubStart1600209,
        ["1600210"] = self.OnSubStart1600210,
        ["1600216"] = self.OnSubStart1600216,
        ["1600217"] = self.OnSubStart1600217,
        ["1600211"] = self.OnSubStart1600211,
        ["1600212"] = self.OnSubStart1600212,
        ["1600213"] = self.OnSubStart1600213,
        ["1600214"] = self.OnSubStart1600214
    }
end

function Quest16002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1600201"] = self.OnSubFinish1600201,
        ["1600202"] = self.OnSubFinish1600202,
        ["1600203"] = self.OnSubFinish1600203,
        ["1600204"] = self.OnSubFinish1600204,
        ["1600215"] = self.OnSubFinish1600215,
        ["1600205"] = self.OnSubFinish1600205,
        ["1600206"] = self.OnSubFinish1600206,
        ["1600207"] = self.OnSubFinish1600207,
        ["1600208"] = self.OnSubFinish1600208,
        ["1600209"] = self.OnSubFinish1600209,
        ["1600210"] = self.OnSubFinish1600210,
        ["1600216"] = self.OnSubFinish1600216,
        ["1600217"] = self.OnSubFinish1600217,
        ["1600211"] = self.OnSubFinish1600211,
        ["1600212"] = self.OnSubFinish1600212,
        ["1600213"] = self.OnSubFinish1600213,
        ["1600214"] = self.OnSubFinish1600214
    }
end

function Quest16002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1600205"] = self.OnSubFailed1600205,
        ["1600207"] = self.OnSubFailed1600207,
        ["1600209"] = self.OnSubFailed1600209,
        ["1600216"] = self.OnSubFailed1600216,
        ["1600217"] = self.OnSubFailed1600217,
        ["1600211"] = self.OnSubFailed1600211
    }
end

function Quest16002:Start()
    print("Start")
end

function Quest16002:OnDestroy()
    print("OnDestroy")
end

function Quest16002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16002:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1600215Trigger")
    this:ActorDestroy("Q1600207Trigger")
    this:ActorDestroy("Q1600216Trigger")
    this:ActorDestroy("Q1600212Trigger")
    this:ActorDestroy("Q1600217Trigger")
end

function Quest16002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1600211)
    end
end

function Quest16002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest16002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest16002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest16002:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest16002:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest16002:OnSubStart1600201(arg1)
    print("OnSubStart1600201")
    actorUtils.FinishQuestID(false, 1600201)
end

function Quest16002:OnSubFinish1600201(arg1)
    print("OnSubFinish1600201")
    this:QuestNarratorTask(datas.NarratorWithId_1600201, nil)
    this:SetNavigationByMainId(16002, true)
end

function Quest16002:OnSubStart1600202(arg1)
    print("OnSubStart1600202")
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1320.id, 0, 10, 1600202)
    this:CreateQuestNpc(arg1, npcs.Npc10011.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10011.alias, 16002):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10011.alias, 16002):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1061.alias, 16002):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc10012.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 16002):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 16002):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Gaia.alias, 16002):SitOnChair(8040, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16002):SitOnChair(0, true)
end

function Quest16002:OnSubFinish1600202(arg1)
    print("OnSubFinish1600202")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ClearNarratorTask()
end

function Quest16002:OnSubStart1600203(arg1)
    print("OnSubStart1600203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600203, 0, 10, 1, npcs.Npc1320.id)
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1061.alias, 16002):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc10011.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10011.alias, 16002):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10011.alias, 16002):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc10012.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 16002):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 16002):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Gaia.alias, 16002):SitOnChair(8040, true)
    this:DeployRangeStoryByQuest(121600101, 3, {x = 2234.4, y = 212.1, z = -910.7}, 80, 100)
end

function Quest16002:OnSubFinish1600203(arg1)
    print("OnSubFinish1600203")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Gaia.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1061.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10011.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10012.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090.alias, 3)
    this:CancelRangeStoryByQuest(121600101)
end

function Quest16002:OnSubStart1600204(arg1)
    print("OnSubStart1600204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600204, 0, 10, 1, npcs.Npc1320.id)
end

function Quest16002:OnSubFinish1600204(arg1)
    print("OnSubFinish1600204")
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
end

function Quest16002:OnSubStart1600215(arg1)
    print("OnSubStart1600215")
    actorMgr:CreateActorWithPos("Q1600215Trigger", "Actor/Gadget/Q1600215Trigger", 70900002, 0, points._Q1600215TriggerPoint_.pos, points._Q1600215TriggerPoint_.rot, true, false, 3)
end

function Quest16002:OnSubFinish1600215(arg1)
    print("OnSubFinish1600215")
    this:ActorDestroy("Q1600215Trigger")
end

function Quest16002:OnSubStart1600205(arg1)
    print("OnSubStart1600205")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600205, true, 1600205)
end

function Quest16002:OnSubFinish1600205(arg1)
    print("OnSubFinish1600205")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 20297)
end

function Quest16002:OnSubFailed1600205(arg1)
    print("OnSubFailed1600205")
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
    this:ClearNpcTriggerByQuestId(1600205)
end

function Quest16002:OnSubStart1600206(arg1)
    print("OnSubStart1600206")
end

function Quest16002:OnSubFinish1600206(arg1)
    print("OnSubFinish1600206")
end

function Quest16002:OnSubStart1600207(arg1)
    print("OnSubStart1600207")
    actorMgr:CreateActorWithPos("Q1600207Trigger", "Actor/Gadget/Q1600207Trigger", 70900002, 0, points._Q1600207TriggerPoint_.pos, points._Q1600207TriggerPoint_.rot, true, false, 20297)
end

function Quest16002:OnSubFinish1600207(arg1)
    print("OnSubFinish1600207")
    this:ActorDestroy("Q1600207Trigger")
end

function Quest16002:OnSubFailed1600207(arg1)
    print("OnSubFailed1600207")
    this:ActorDestroy("Q1600207Trigger")
end

function Quest16002:OnSubStart1600208(arg1)
    print("OnSubStart1600208")
end

function Quest16002:OnSubFinish1600208(arg1)
    print("OnSubFinish1600208")
end

function Quest16002:OnSubStart1600209(arg1)
    print("OnSubStart1600209")
    this:CreateQuestNpc(arg1, npcs.Npc15887.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15891.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15888.id, 0, false, 0)
    this:DeployRangeStoryByQuest(121600200, 20297, {x = -1602.16, y = 399.02, z = 606.474}, 80, 100)
end

function Quest16002:OnSubFinish1600209(arg1)
    print("OnSubFinish1600209")
    this:SafeDestroyQuestNpc(npcs.Npc15887.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15891.alias, 20297)
    this:SafeDestroyQuestNpc(npcs.Npc15888.alias, 20297)
    this:CancelRangeStoryByQuest(121600200)
end

function Quest16002:OnSubFailed1600209(arg1)
    print("OnSubFailed1600209")
    this:NpcDestroyImmediately(20297, npcs.Npc15887.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15891.alias)
    this:NpcDestroyImmediately(20297, npcs.Npc15888.alias)
    this:CancelRangeStoryByQuest(121600200)
end

function Quest16002:OnSubStart1600210(arg1)
    print("OnSubStart1600210")
end

function Quest16002:OnSubFinish1600210(arg1)
    print("OnSubFinish1600210")
end

function Quest16002:OnSubStart1600216(arg1)
    print("OnSubStart1600216")
    actorMgr:CreateActorWithPos("Q1600216Trigger", "Actor/Gadget/Q1600216Trigger", 70900002, 0, points._Q1600216TriggerPoint_.pos, points._Q1600216TriggerPoint_.rot, true, false, 20297)
end

function Quest16002:OnSubFinish1600216(arg1)
    print("OnSubFinish1600216")
end

function Quest16002:OnSubFailed1600216(arg1)
    print("OnSubFailed1600216")
    this:ActorDestroy("Q1600216Trigger")
end

function Quest16002:OnSubStart1600217(arg1)
    print("OnSubStart1600217")
    actorMgr:CreateActorWithPos("Q1600217Trigger", "Actor/Gadget/Q1600217Trigger", 70900002, 0, points._Q1600217TriggerPoint_.pos, points._Q1600217TriggerPoint_.rot, true, false, 20297)
end

function Quest16002:OnSubFinish1600217(arg1)
    print("OnSubFinish1600217")
end

function Quest16002:OnSubFailed1600217(arg1)
    print("OnSubFailed1600217")
    this:ActorDestroy("Q1600217Trigger")
end

function Quest16002:OnSubStart1600211(arg1)
    print("OnSubStart1600211")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600211, 0, 20, 1, npcs.Npc1320.id)
    actorUtils.ShowContext("MagicInkBar", 1)
    this:DeployRangeStoryByQuest(121600201, 20297, {x = -1616.306, y = 408.15, z = 566.766}, 40, 60)
end

function Quest16002:OnSubFinish1600211(arg1)
    print("OnSubFinish1600211")
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    actorUtils.ShowContext("MagicInkBar", 0)
    this:CancelRangeStoryByQuest(121600201)
    this:TransmitPlayerWithQuestIdByData(1600211, 1, datas.TransmitData_FromCastle, nil, nil, nil)
end

function Quest16002:OnSubFailed1600211(arg1)
    print("OnSubFailed1600211")
    actorUtils.ShowContext("MagicInkBar", 0)
    this:NpcDestroyImmediately(20297, npcs.Npc1320.alias)
    this:ClearNpcTriggerByQuestId(1600211)
    this:CancelRangeStoryByQuest(121600201)
end

function Quest16002:OnSubStart1600212(arg1)
    print("OnSubStart1600212")
    this:NpcCreateWithNoBlack(npcs.Npc1320.id, 0, 10, 1600212, true, 1600212)
end

function Quest16002:OnSubFinish1600212(arg1)
    print("OnSubFinish1600212")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:ActorDestroy("Q1600212Trigger")
end

function Quest16002:OnSubStart1600213(arg1)
    print("OnSubStart1600213")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1600213, 0, 10, 1, npcs.Npc1320.id)
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10090.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10090.alias, 16002):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1061.alias, 16002):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest16002:OnSubFinish1600213(arg1)
    print("OnSubFinish1600213")
    this:NpcDestroyImmediately(3, npcs.Npc1320.alias)
    this:NpcDestroyImmediately(3, npcs.Gaia.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10090.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1061.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1600213, nil, nil, nil)
end

function Quest16002:OnSubStart1600214(arg1)
    print("OnSubStart1600214")
    this:NpcCreateWithNpcTrigger(npcs.Lisa.id, 0, 10, 1600214)
    this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Gaia.id, 0, false, 0)
end

function Quest16002:OnSubFinish1600214(arg1)
    print("OnSubFinish1600214")
    this:CreateQuestOrphanNpc(arg1, npcs.Qin.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1600214)
    this:CreateQuestOrphanNpc(arg1, npcs.Lisa.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1600214)
    this:CreateQuestOrphanNpc(arg1, npcs.Gaia.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList_1600214)
end

return Quest16002
