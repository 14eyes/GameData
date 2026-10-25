require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40231 = class("Quest40231", QuestActorProxy)
Quest40231.defaultAlias = "Quest40231"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40231:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40231:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4023128"] = self.OnSubStart4023128,
        ["4023101"] = self.OnSubStart4023101,
        ["4023102"] = self.OnSubStart4023102,
        ["4023103"] = self.OnSubStart4023103,
        ["4023104"] = self.OnSubStart4023104,
        ["4023105"] = self.OnSubStart4023105,
        ["4023106"] = self.OnSubStart4023106,
        ["4023117"] = self.OnSubStart4023117,
        ["4023119"] = self.OnSubStart4023119,
        ["4023121"] = self.OnSubStart4023121,
        ["4023123"] = self.OnSubStart4023123,
        ["4023125"] = self.OnSubStart4023125,
        ["4023118"] = self.OnSubStart4023118,
        ["4023120"] = self.OnSubStart4023120,
        ["4023122"] = self.OnSubStart4023122,
        ["4023124"] = self.OnSubStart4023124,
        ["4023126"] = self.OnSubStart4023126,
        ["4023107"] = self.OnSubStart4023107,
        ["4023127"] = self.OnSubStart4023127,
        ["4023108"] = self.OnSubStart4023108,
        ["4023109"] = self.OnSubStart4023109,
        ["4023110"] = self.OnSubStart4023110,
        ["4023111"] = self.OnSubStart4023111,
        ["4023112"] = self.OnSubStart4023112,
        ["4023113"] = self.OnSubStart4023113,
        ["4023114"] = self.OnSubStart4023114,
        ["4023129"] = self.OnSubStart4023129,
        ["4023116"] = self.OnSubStart4023116,
        ["4023115"] = self.OnSubStart4023115
    }
end

function Quest40231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4023128"] = self.OnSubFinish4023128,
        ["4023101"] = self.OnSubFinish4023101,
        ["4023102"] = self.OnSubFinish4023102,
        ["4023103"] = self.OnSubFinish4023103,
        ["4023104"] = self.OnSubFinish4023104,
        ["4023105"] = self.OnSubFinish4023105,
        ["4023106"] = self.OnSubFinish4023106,
        ["4023117"] = self.OnSubFinish4023117,
        ["4023119"] = self.OnSubFinish4023119,
        ["4023121"] = self.OnSubFinish4023121,
        ["4023123"] = self.OnSubFinish4023123,
        ["4023125"] = self.OnSubFinish4023125,
        ["4023118"] = self.OnSubFinish4023118,
        ["4023120"] = self.OnSubFinish4023120,
        ["4023122"] = self.OnSubFinish4023122,
        ["4023124"] = self.OnSubFinish4023124,
        ["4023126"] = self.OnSubFinish4023126,
        ["4023107"] = self.OnSubFinish4023107,
        ["4023127"] = self.OnSubFinish4023127,
        ["4023108"] = self.OnSubFinish4023108,
        ["4023109"] = self.OnSubFinish4023109,
        ["4023110"] = self.OnSubFinish4023110,
        ["4023111"] = self.OnSubFinish4023111,
        ["4023112"] = self.OnSubFinish4023112,
        ["4023113"] = self.OnSubFinish4023113,
        ["4023114"] = self.OnSubFinish4023114,
        ["4023129"] = self.OnSubFinish4023129,
        ["4023116"] = self.OnSubFinish4023116,
        ["4023115"] = self.OnSubFinish4023115
    }
end

function Quest40231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4023103"] = self.OnSubFailed4023103,
        ["4023104"] = self.OnSubFailed4023104,
        ["4023105"] = self.OnSubFailed4023105,
        ["4023106"] = self.OnSubFailed4023106,
        ["4023119"] = self.OnSubFailed4023119,
        ["4023121"] = self.OnSubFailed4023121,
        ["4023123"] = self.OnSubFailed4023123,
        ["4023125"] = self.OnSubFailed4023125,
        ["4023120"] = self.OnSubFailed4023120,
        ["4023122"] = self.OnSubFailed4023122,
        ["4023124"] = self.OnSubFailed4023124,
        ["4023126"] = self.OnSubFailed4023126,
        ["4023107"] = self.OnSubFailed4023107,
        ["4023108"] = self.OnSubFailed4023108,
        ["4023109"] = self.OnSubFailed4023109,
        ["4023110"] = self.OnSubFailed4023110,
        ["4023112"] = self.OnSubFailed4023112,
        ["4023113"] = self.OnSubFailed4023113,
        ["4023114"] = self.OnSubFailed4023114
    }
end

function Quest40231:Start()
    print("Start")
end

function Quest40231:OnDestroy()
    print("OnDestroy")
end

function Quest40231:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40231:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40231:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1321.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 20330)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 20330)
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 20330)
    this:SafeDestroyQuestNpc(npcs.Wendy.alias, 20331)
    this:SafeDestroyQuestNpc(npcs.Diluc.alias, 20330)
    this:CancelStoryByQuest(134023100)
    this:CancelStoryByQuest(134023102)
    this:CancelStoryByQuest(134023101)
    this:CancelStoryByQuest(114023102)
    this:RecycleAllRes()
    this:SafeDestroyQuestNpc(npcs.Qin.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 1004)
    this:DestroyNpcTrigger("Q4023101N1321Trigger")
    this:DestroyNpcTrigger("Q4023103N1001Trigger")
    this:UnCallDelayByQuest("Q4023105N1001CallDelay")
    this:DestroyNpcTrigger("Q4023105N1001Trigger")
    this:DestroyNpcTrigger("Q4023108N1310Trigger")
    this:DestroyNpcTrigger("Q4023110N1006Trigger")
    this:DestroyNpcTrigger("Q4023112N1001Trigger")
    this:DestroyNpcTrigger("Q4023106N1006Trigger")
    this:DestroyNpcTrigger("Q4023106N1009Trigger")
    this:UnCallDelayByQuest("Q4023120N1009CallDelay")
    this:DestroyNpcTrigger("Q4023120N1009Trigger")
    this:UnCallDelayByQuest("Q4023119N1006CallDelay")
    this:DestroyNpcTrigger("Q4023119N1006Trigger")
    this:DestroyNpcTrigger("Q4023121N1009Trigger")
    this:DestroyNpcTrigger("Q4023122N1006Trigger")
    this:DestroyNpcTrigger("Q4023116N1006Trigger")
    this:UnCallDelayByQuest("Q4023125N1009CallDelay")
    this:DestroyNpcTrigger("Q4023125N1009Trigger")
    this:UnCallDelayByQuest("Q4023126N1006CallDelay")
    this:DestroyNpcTrigger("Q4023126N1006Trigger")
    this:ActorDestroy("Q4023115Trigger_1", 0)
    this:ActorDestroy("Q4023115OrphanDelete", 0)
    this:ActorDestroy("Q4023115Trigger_1", 0)
    this:ActorDestroy("Q4023111Trigger", 0)
    this:ActorDestroy("Q4023116Trigger", 0)
end

function Quest40231:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4023115Trigger_1", 0)
    this:ActorDestroy("Q4023115OrphanDelete", 0)
    this:ActorDestroy("Q4023115Trigger_1", 0)
    this:ActorDestroy("Q4023111Trigger", 0)
    this:ActorDestroy("Q4023116Trigger", 0)
end

function Quest40231:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40231:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40231:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40231:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40231:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest40231:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest40231:OnSubStart4023128(arg1)
    print("OnSubStart4023128")
end

function Quest40231:OnSubFinish4023128(arg1)
    print("OnSubFinish4023128")
end

function Quest40231:OnSubStart4023101(arg1)
    print("OnSubStart4023101")
    this:NpcCreateWithNpcTrigger(npcs.Npc1321.id, 0, 5, 4023101)
end

function Quest40231:OnSubFinish4023101(arg1)
    print("OnSubFinish4023101")
    this:NpcDestroyImmediately(1004, npcs.Npc1321.alias)
    this:PlayerEnterDungeonWithData(5, 1303, 4023101, 1, datas.TransmitWithUI, nil, nil)
end

function Quest40231:OnSubStart4023102(arg1)
    print("OnSubStart4023102")
end

function Quest40231:OnSubFinish4023102(arg1)
    print("OnSubFinish4023102")
end

function Quest40231:OnSubStart4023103(arg1)
    print("OnSubStart4023103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023103, 0, 30, 1, npcs.Wendy.id)
end

function Quest40231:OnSubFinish4023103(arg1)
    print("OnSubFinish4023103")
    this:NpcDestroyImmediately(20330, npcs.Wendy.alias)
    this:TransmitPlayerByData(arg1, 1, datas.Transmit_BB, nil, nil, nil)
end

function Quest40231:OnSubFailed4023103(arg1)
    print("OnSubFailed4023103")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023104(arg1)
    print("OnSubStart4023104")
end

function Quest40231:OnSubFinish4023104(arg1)
    print("OnSubFinish4023104")
end

function Quest40231:OnSubFailed4023104(arg1)
    print("OnSubFailed4023104")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023105(arg1)
    print("OnSubStart4023105")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(4023105, 0, 30, 1, npcs.Wendy.id)
end

function Quest40231:OnSubFinish4023105(arg1)
    print("OnSubFinish4023105")
    this:NpcDestroyImmediately(20330, npcs.Wendy.alias)
end

function Quest40231:OnSubFailed4023105(arg1)
    print("OnSubFailed4023105")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023106(arg1)
    print("OnSubStart4023106")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 10, 4023106)
    this:NpcCreateWithNpcTrigger(npcs.Diluc.id, 0, 10, 4023106)
    this:DeployStoryByQuest(134023101)
    this:DeployStoryByQuest(114023102)
end

function Quest40231:OnSubFinish4023106(arg1)
    print("OnSubFinish4023106")
    this:NpcDestroyImmediately(20330, npcs.Qin.alias)
    this:NpcDestroyImmediately(20330, npcs.Diluc.alias)
    this:CancelStoryByQuest(114023102)
    this:DestroyQuestTrigger("Q4023106N1006Trigger", false)
    this:CancelStoryByQuest(134023101)
    this:DestroyQuestTrigger("Q4023106N1009Trigger", false)
end

function Quest40231:OnSubFailed4023106(arg1)
    print("OnSubFailed4023106")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023117(arg1)
    print("OnSubStart4023117")
end

function Quest40231:OnSubFinish4023117(arg1)
    print("OnSubFinish4023117")
end

function Quest40231:OnSubStart4023119(arg1)
    print("OnSubStart4023119")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(4023119, 0, 30, 1, npcs.Qin.id)
end

function Quest40231:OnSubFinish4023119(arg1)
    print("OnSubFinish4023119")
    this:NpcDestroyImmediately(20330, npcs.Qin.alias)
    this:QuestNarratorTask(datas.NarratorWithId_4023103, nil)
end

function Quest40231:OnSubFailed4023119(arg1)
    print("OnSubFailed4023119")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023121(arg1)
    print("OnSubStart4023121")
    this:NpcCreateWithNpcTrigger(npcs.Diluc.id, 0, 10, 4023121)
    this:DeployStoryByQuest(114023102)
end

function Quest40231:OnSubFinish4023121(arg1)
    print("OnSubFinish4023121")
    this:NpcDestroyImmediately(20330, npcs.Diluc.alias)
    this:CancelStoryByQuest(114023102)
end

function Quest40231:OnSubFailed4023121(arg1)
    print("OnSubFailed4023121")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023123(arg1)
    print("OnSubStart4023123")
end

function Quest40231:OnSubFinish4023123(arg1)
    print("OnSubFinish4023123")
end

function Quest40231:OnSubFailed4023123(arg1)
    print("OnSubFailed4023123")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023125(arg1)
    print("OnSubStart4023125")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(4023125, 0, 30, 1, npcs.Diluc.id)
end

function Quest40231:OnSubFinish4023125(arg1)
    print("OnSubFinish4023125")
    this:NpcDestroyImmediately(20330, npcs.Diluc.alias)
    this:QuestNarratorTask(datas.NarratorWithId_4023104, nil)
end

function Quest40231:OnSubFailed4023125(arg1)
    print("OnSubFailed4023125")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023118(arg1)
    print("OnSubStart4023118")
end

function Quest40231:OnSubFinish4023118(arg1)
    print("OnSubFinish4023118")
end

function Quest40231:OnSubStart4023120(arg1)
    print("OnSubStart4023120")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(4023120, 0, 30, 1, npcs.Diluc.id)
end

function Quest40231:OnSubFinish4023120(arg1)
    print("OnSubFinish4023120")
    this:NpcDestroyImmediately(20330, npcs.Diluc.alias)
    this:QuestNarratorTask(datas.NarratorWithId_4023101, nil)
end

function Quest40231:OnSubFailed4023120(arg1)
    print("OnSubFailed4023120")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023122(arg1)
    print("OnSubStart4023122")
    this:NpcCreateWithNpcTrigger(npcs.Qin.id, 0, 10, 4023122)
    this:DeployStoryByQuest(134023101)
end

function Quest40231:OnSubFinish4023122(arg1)
    print("OnSubFinish4023122")
    this:NpcDestroyImmediately(20330, npcs.Qin.alias)
    this:CancelStoryByQuest(134023101)
end

function Quest40231:OnSubFailed4023122(arg1)
    print("OnSubFailed4023122")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023124(arg1)
    print("OnSubStart4023124")
end

function Quest40231:OnSubFinish4023124(arg1)
    print("OnSubFinish4023124")
end

function Quest40231:OnSubFailed4023124(arg1)
    print("OnSubFailed4023124")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023126(arg1)
    print("OnSubStart4023126")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(4023126, 0, 30, 1, npcs.Qin.id)
end

function Quest40231:OnSubFinish4023126(arg1)
    print("OnSubFinish4023126")
    this:NpcDestroyImmediately(20330, npcs.Qin.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4023104, nil)
    end)
end

function Quest40231:OnSubFailed4023126(arg1)
    print("OnSubFailed4023126")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023107(arg1)
    print("OnSubStart4023107")
    this:DeployStoryByQuest(134023100)
end

function Quest40231:OnSubFinish4023107(arg1)
    print("OnSubFinish4023107")
    this:CancelStoryByQuest(134023100)
end

function Quest40231:OnSubFailed4023107(arg1)
    print("OnSubFailed4023107")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023127(arg1)
    print("OnSubStart4023127")
end

function Quest40231:OnSubFinish4023127(arg1)
    print("OnSubFinish4023127")
end

function Quest40231:OnSubStart4023108(arg1)
    print("OnSubStart4023108")
    this:NpcCreateWithNpcTrigger(npcs.Npc1310.id, 0, 20, 4023108)
    this:DeployStoryByQuest(134023102)
end

function Quest40231:OnSubFinish4023108(arg1)
    print("OnSubFinish4023108")
    this:NpcDestroyImmediately(20330, npcs.Npc1310.alias)
    this:CancelStoryByQuest(134023102)
end

function Quest40231:OnSubFailed4023108(arg1)
    print("OnSubFailed4023108")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023109(arg1)
    print("OnSubStart4023109")
end

function Quest40231:OnSubFinish4023109(arg1)
    print("OnSubFinish4023109")
end

function Quest40231:OnSubFailed4023109(arg1)
    print("OnSubFailed4023109")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023110(arg1)
    print("OnSubStart4023110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023110, 0, 40, 1, npcs.Qin.id)
end

function Quest40231:OnSubFinish4023110(arg1)
    print("OnSubFinish4023110")
    this:NpcDestroyImmediately(20330, npcs.Qin.alias)
end

function Quest40231:OnSubFailed4023110(arg1)
    print("OnSubFailed4023110")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023111(arg1)
    print("OnSubStart4023111")
    actorMgr:CreateActorWithPos("Q4023111Trigger", "Actor/Gadget/Q4023111Trigger", 70900002, 0, points._Q4023111TriggerPoint_.pos, points._Q4023111TriggerPoint_.rot, true, false, 20330, nil, 0, 0)
end

function Quest40231:OnSubFinish4023111(arg1)
    print("OnSubFinish4023111")
    this:ActorDestroy("Q4023111Trigger", 0)
end

function Quest40231:OnSubStart4023112(arg1)
    print("OnSubStart4023112")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023112, 0, 20, 1, npcs.Wendy.id)
end

function Quest40231:OnSubFinish4023112(arg1)
    print("OnSubFinish4023112")
    this:NpcDestroyImmediately(20331, npcs.Wendy.alias)
end

function Quest40231:OnSubFailed4023112(arg1)
    print("OnSubFailed4023112")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023113(arg1)
    print("OnSubStart4023113")
end

function Quest40231:OnSubFinish4023113(arg1)
    print("OnSubFinish4023113")
end

function Quest40231:OnSubFailed4023113(arg1)
    print("OnSubFailed4023113")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023114(arg1)
    print("OnSubStart4023114")
    if sceneData.currSceneID == 20331 then
        this:PlayCutsceneIndex(402311501, function(arg1)
            this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
            actorUtils.FinishQuestID(false, 4023114)
        end, nil, nil, false)
    end
end

function Quest40231:OnSubFinish4023114(arg1)
    print("OnSubFinish4023114")
end

function Quest40231:OnSubFailed4023114(arg1)
    print("OnSubFailed4023114")
    this:RecycleAllRes()
end

function Quest40231:OnSubStart4023129(arg1)
    print("OnSubStart4023129")
    actorMgr:CreateActorWithPos("Q4023116Trigger", "Actor/Gadget/Q4023116Trigger", 70900002, 0, points._Q4023116TriggerPoint_.pos, points._Q4023116TriggerPoint_.rot, true, false, 20331, nil, 0, 0)
end

function Quest40231:OnSubFinish4023129(arg1)
    print("OnSubFinish4023129")
    this:ActorDestroy("Q4023116Trigger", 0)
end

function Quest40231:OnSubStart4023116(arg1)
    print("OnSubStart4023116")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4023116, 0, 10, 1, npcs.Qin.id)
end

function Quest40231:OnSubFinish4023116(arg1)
    print("OnSubFinish4023116")
    this:NpcDestroyImmediately(1004, npcs.Qin.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4023105, nil)
    end)
end

function Quest40231:OnSubStart4023115(arg1)
    print("OnSubStart4023115")
    this:NpcCreateWithNoBlack(npcs.Npc1321.id, 0, 8, 4023115, true, 4023115)
    this:CreateQuestNpc(arg1, npcs.Qin.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Qin.alias, 40231):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 40231):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 40231):DisableInteeHeadCtrl(true)
    if this:GetQuestVar(4023115, 2) == 0 then
        actorMgr:CreateActorWithPos("Q4023115Trigger_1", "Actor/Gadget/Q4023115Trigger_1", 70900002, 0, points._Q4023115Trigger_1Point_.pos, points._Q4023115Trigger_1Point_.rot, true, false, 1004, nil, 0, 0)
    end

    actorUtils.FinishQuestID(false, 1020302)
end

function Quest40231:OnSubFinish4023115(arg1)
    print("OnSubFinish4023115")
    this:NpcDestroyImmediately(1004, npcs.Npc1321.alias)
    this:CreateQuestOrphanNpc(arg1, 1018, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, 1006, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, 1019, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc30954.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q4023115OrphanDelete", "Actor/Gadget/Q4023115OrphanDelete", 70900002, 0, points._Q4023115OrphanDeletePoint_.pos, points._Q4023115OrphanDeletePoint_.rot, true, false, 1004, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc1018.alias, 40231):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1019.alias, 40231):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Qin.alias, 40231):DisableInteeHeadCtrl(true)
    if this:GetQuestVar(4023115, 2) == 0 then
        actorMgr:CreateActorWithPos("Q4023115Trigger_1", "Actor/Gadget/Q4023115Trigger_1", 70900002, 0, points._Q4023115Trigger_1Point_.pos, points._Q4023115Trigger_1Point_.rot, true, false, 1004, nil, 0, 0)
    end
end

return Quest40231
