require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75151 = class("Quest75151", QuestActorProxy)
Quest75151.defaultAlias = "Quest75151"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75151:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7515105"] = self.OnSubStart7515105,
        ["7515106"] = self.OnSubStart7515106,
        ["7515136"] = self.OnSubStart7515136,
        ["7515107"] = self.OnSubStart7515107,
        ["7515125"] = self.OnSubStart7515125,
        ["7515126"] = self.OnSubStart7515126,
        ["7515108"] = self.OnSubStart7515108,
        ["7515109"] = self.OnSubStart7515109,
        ["7515110"] = self.OnSubStart7515110,
        ["7515111"] = self.OnSubStart7515111,
        ["7515112"] = self.OnSubStart7515112,
        ["7515113"] = self.OnSubStart7515113,
        ["7515130"] = self.OnSubStart7515130,
        ["7515134"] = self.OnSubStart7515134,
        ["7515114"] = self.OnSubStart7515114,
        ["7515115"] = self.OnSubStart7515115,
        ["7515116"] = self.OnSubStart7515116,
        ["7515117"] = self.OnSubStart7515117,
        ["7515118"] = self.OnSubStart7515118,
        ["7515132"] = self.OnSubStart7515132,
        ["7515119"] = self.OnSubStart7515119,
        ["7515120"] = self.OnSubStart7515120,
        ["7515121"] = self.OnSubStart7515121,
        ["7515135"] = self.OnSubStart7515135,
        ["7515102"] = self.OnSubStart7515102,
        ["7515122"] = self.OnSubStart7515122,
        ["7515123"] = self.OnSubStart7515123,
        ["7515101"] = self.OnSubStart7515101,
        ["7515124"] = self.OnSubStart7515124
    }
end

function Quest75151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7515105"] = self.OnSubFinish7515105,
        ["7515106"] = self.OnSubFinish7515106,
        ["7515136"] = self.OnSubFinish7515136,
        ["7515107"] = self.OnSubFinish7515107,
        ["7515125"] = self.OnSubFinish7515125,
        ["7515126"] = self.OnSubFinish7515126,
        ["7515108"] = self.OnSubFinish7515108,
        ["7515109"] = self.OnSubFinish7515109,
        ["7515110"] = self.OnSubFinish7515110,
        ["7515111"] = self.OnSubFinish7515111,
        ["7515112"] = self.OnSubFinish7515112,
        ["7515113"] = self.OnSubFinish7515113,
        ["7515130"] = self.OnSubFinish7515130,
        ["7515134"] = self.OnSubFinish7515134,
        ["7515114"] = self.OnSubFinish7515114,
        ["7515115"] = self.OnSubFinish7515115,
        ["7515116"] = self.OnSubFinish7515116,
        ["7515117"] = self.OnSubFinish7515117,
        ["7515118"] = self.OnSubFinish7515118,
        ["7515132"] = self.OnSubFinish7515132,
        ["7515119"] = self.OnSubFinish7515119,
        ["7515120"] = self.OnSubFinish7515120,
        ["7515121"] = self.OnSubFinish7515121,
        ["7515135"] = self.OnSubFinish7515135,
        ["7515102"] = self.OnSubFinish7515102,
        ["7515122"] = self.OnSubFinish7515122,
        ["7515123"] = self.OnSubFinish7515123,
        ["7515101"] = self.OnSubFinish7515101,
        ["7515124"] = self.OnSubFinish7515124
    }
end

function Quest75151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7515118"] = self.OnSubFailed7515118, ["7515122"] = self.OnSubFailed7515122}
end

function Quest75151:Start()
    print("Start")
end

function Quest75151:OnDestroy()
    print("OnDestroy")
end

function Quest75151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75151:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7515102rigger")
    this:ActorDestroy("Q7515105rigger")
    this:ActorDestroy("Q7515108rigger")
    this:ActorDestroy("Q7515117igger")
    this:ActorDestroy("Q7515132igger")
    this:ActorDestroy("Q7515120igger")
    this:ActorDestroy("Q7515132_1")
    this:ActorDestroy("Q7515107igger")
    this:ActorDestroy("Q7515130Trigger")
end

function Quest75151:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75151:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75151:OnSubStart7515105(arg1)
    print("OnSubStart7515105")
    actorMgr:CreateActorWithPos("Q7515105rigger", "Actor/Gadget/Q7515105rigger", 70900002, 0, points._Q7515105riggerPoint_.pos, points._Q7515105riggerPoint_.rot, true, false, 101)
end

function Quest75151:OnSubFinish7515105(arg1)
    print("OnSubFinish7515105")
    actorUtils.ShowContext("ChapterBeginDialog", 10231)
end

function Quest75151:OnSubStart7515106(arg1)
    print("OnSubStart7515106")
    this:CreateQuestNpc(arg1, npcs.Npc21834.id, 0, false, 0)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:TryShowQuestReview("75151")
    end)
end

function Quest75151:OnSubFinish7515106(arg1)
    print("OnSubFinish7515106")
end

function Quest75151:OnSubStart7515136(arg1)
    print("OnSubStart7515136")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7515136, function(arg1)
            actorUtils.FinishQuestID(false, 7515136)
        end, nil, nil, false)
    end)
end

function Quest75151:OnSubFinish7515136(arg1)
    print("OnSubFinish7515136")
    this:SafeDestroyQuestNpc(npcs.Npc21834.alias, 101)
end

function Quest75151:OnSubStart7515107(arg1)
    print("OnSubStart7515107")
    this:CreateQuestNpc(arg1, npcs.Npc21772.id, 0, false, 0)
end

function Quest75151:OnSubFinish7515107(arg1)
    print("OnSubFinish7515107")
    this:SafeDestroyQuestNpc(npcs.Npc21772.alias, 101)
end

function Quest75151:OnSubStart7515125(arg1)
    print("OnSubStart7515125")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1, nil, nil, nil)
        actorMgr:CreateActorWithPos("Q7515107igger", "Actor/Gadget/Q7515107igger", 70900002, 0, points._Q7515107iggerPoint_.pos, points._Q7515107iggerPoint_.rot, true, false, 101)
    end)
end

function Quest75151:OnSubFinish7515125(arg1)
    print("OnSubFinish7515125")
end

function Quest75151:OnSubStart7515126(arg1)
    print("OnSubStart7515126")
    actorUtils.FinishQuestID(false, 7515126)
end

function Quest75151:OnSubFinish7515126(arg1)
    print("OnSubFinish7515126")
end

function Quest75151:OnSubStart7515108(arg1)
    print("OnSubStart7515108")
    actorUtils.FinishQuestID(false, 7515108)
end

function Quest75151:OnSubFinish7515108(arg1)
    print("OnSubFinish7515108")
end

function Quest75151:OnSubStart7515109(arg1)
    print("OnSubStart7515109")
    actorMgr:CreateActorWithPos("Q7515108rigger", "Actor/Gadget/Q7515108rigger", 70900002, 0, points._Q7515108riggerPoint_.pos, points._Q7515108riggerPoint_.rot, true, false, 101)
end

function Quest75151:OnSubFinish7515109(arg1)
    print("OnSubFinish7515109")
end

function Quest75151:OnSubStart7515110(arg1)
    print("OnSubStart7515110")
end

function Quest75151:OnSubFinish7515110(arg1)
    print("OnSubFinish7515110")
end

function Quest75151:OnSubStart7515111(arg1)
    print("OnSubStart7515111")
    actorUtils.ShowFakeQuestRevive(7515111)
end

function Quest75151:OnSubFinish7515111(arg1)
    print("OnSubFinish7515111")
    this:QuestNarratorTask(datas.NarratorWithId_7515111, nil)
end

function Quest75151:OnSubStart7515112(arg1)
    print("OnSubStart7515112")
    globalActor:DisablePaimonInProfilePage({101})
    this:CallDelayByQuest("", 20, function(arg1)
        actorUtils.FinishQuestID(false, 7515112)
    end)
end

function Quest75151:OnSubFinish7515112(arg1)
    print("OnSubFinish7515112")
end

function Quest75151:OnSubStart7515113(arg1)
    print("OnSubStart7515113")
    this:CreateQuestNpc(arg1, npcs.Npc21801.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21801.alias, "", true)
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515113(arg1)
    print("OnSubFinish7515113")
end

function Quest75151:OnSubStart7515130(arg1)
    print("OnSubStart7515130")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 2, datas.TransmitData, nil, nil, nil)
        actorMgr:CreateActorWithPos("Q7515130Trigger", "Actor/Gadget/Q7515130Trigger", 70900002, 0, points._Q7515130TriggerPoint_.pos, points._Q7515130TriggerPoint_.rot, true, false, 101)
        globalActor:DisablePaimonInProfilePage({101})
    end)
end

function Quest75151:OnSubFinish7515130(arg1)
    print("OnSubFinish7515130")
end

function Quest75151:OnSubStart7515134(arg1)
    print("OnSubStart7515134")
    this:CreateQuestNpc(arg1, npcs.Npc21801.id, 0, false, 0)
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515134(arg1)
    print("OnSubFinish7515134")
    this:SafeDestroyQuestNpc(npcs.Npc21801.alias, 101)
end

function Quest75151:OnSubStart7515114(arg1)
    print("OnSubStart7515114")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7515114, 0, 20, 0.5, npcs.Npc21810.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515114(arg1)
    print("OnSubFinish7515114")
    this:SafeDestroyQuestNpc(npcs.Npc21810.alias, 101)
end

function Quest75151:OnSubStart7515115(arg1)
    print("OnSubStart7515115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7515115, 0, 20, 0.5, npcs.Npc21811.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515115(arg1)
    print("OnSubFinish7515115")
    this:SafeDestroyQuestNpc(npcs.Npc21811.alias, 101)
end

function Quest75151:OnSubStart7515116(arg1)
    print("OnSubStart7515116")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7515116, 0, 15, 0.5, npcs.Npc21811.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515116(arg1)
    print("OnSubFinish7515116")
    this:SafeDestroyQuestNpc(npcs.Npc21811.alias, 101)
end

function Quest75151:OnSubStart7515117(arg1)
    print("OnSubStart7515117")
    this:CreateQuestNpc(arg1, npcs.Npc21801.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7515117igger", "Actor/Gadget/Q7515117igger", 70900002, 0, points._Q7515117iggerPoint_.pos, points._Q7515117iggerPoint_.rot, true, false, 101)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515117(arg1)
    print("OnSubFinish7515117")
end

function Quest75151:OnSubStart7515118(arg1)
    print("OnSubStart7515118")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21801.id, 0, false, 0)
        this:RequestInteraction(npcs.Npc21801.alias, "", true)
        this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
        globalActor:DisablePaimonInProfilePage({101})
    end)
end

function Quest75151:OnSubFinish7515118(arg1)
    print("OnSubFinish7515118")
end

function Quest75151:OnSubFailed7515118(arg1)
    print("OnSubFailed7515118")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 6, datas.TransmitData03, nil, nil, nil)
    end)
end

function Quest75151:OnSubStart7515132(arg1)
    print("OnSubStart7515132")
    actorMgr:CreateActorWithPos("Q7515132_1", "Actor/Gadget/Q7515132_1", 70900002, 0, points._Q7515132_1Point_.pos, points._Q7515132_1Point_.rot, true, false, 101)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515132(arg1)
    print("OnSubFinish7515132")
end

function Quest75151:OnSubStart7515119(arg1)
    print("OnSubStart7515119")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 4, datas.TransmitData02, function(arg1)
            actorUtils.FinishQuestID(false, 7515119)
            this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
            globalActor:DisablePaimonInProfilePage({101})
        end, nil, nil)
    end)
end

function Quest75151:OnSubFinish7515119(arg1)
    print("OnSubFinish7515119")
    this:SafeDestroyQuestNpc(npcs.Npc21801.alias, 101)
end

function Quest75151:OnSubStart7515120(arg1)
    print("OnSubStart7515120")
    actorMgr:CreateActorWithPos("Q7515120igger", "Actor/Gadget/Q7515120igger", 70900002, 0, points._Q7515120iggerPoint_.pos, points._Q7515120iggerPoint_.rot, true, false, 101)
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515120(arg1)
    print("OnSubFinish7515120")
end

function Quest75151:OnSubStart7515121(arg1)
    print("OnSubStart7515121")
    this:DisableMainPageWithConfigByQuest(true, "DisableRoleCombatRest")
    globalActor:DisablePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515121(arg1)
    print("OnSubFinish7515121")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, function(arg1)
        this:NatsaurusVehicleOff()
        this:DisableMainPageWithConfigByQuest(false, "DisableRoleCombatRest")
    end, nil, 0, false, true)
end

function Quest75151:OnSubStart7515135(arg1)
    print("OnSubStart7515135")
    this:CreateQuestNpc(arg1, npcs.Npc21772.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21772.alias, "", true)
    globalActor:ResumePaimonInProfilePage({101})
end

function Quest75151:OnSubFinish7515135(arg1)
    print("OnSubFinish7515135")
    this:NatsaurusVehicleOff()
end

function Quest75151:OnSubStart7515102(arg1)
    print("OnSubStart7515102")
    actorMgr:CreateActorWithPos("Q7515102rigger", "Actor/Gadget/Q7515102rigger", 70900002, 0, points._Q7515102riggerPoint_.pos, points._Q7515102riggerPoint_.rot, true, false, 101)
end

function Quest75151:OnSubFinish7515102(arg1)
    print("OnSubFinish7515102")
end

function Quest75151:OnSubStart7515122(arg1)
    print("OnSubStart7515122")
end

function Quest75151:OnSubFinish7515122(arg1)
    print("OnSubFinish7515122")
end

function Quest75151:OnSubFailed7515122(arg1)
    print("OnSubFailed7515122")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 8, nil, nil, nil)
    end)
end

function Quest75151:OnSubStart7515123(arg1)
    print("OnSubStart7515123")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7515123, 0, 20, 1, npcs.Npc21801.id)
end

function Quest75151:OnSubFinish7515123(arg1)
    print("OnSubFinish7515123")
end

function Quest75151:OnSubStart7515101(arg1)
    print("OnSubStart7515101")
    this:CreateQuestNpc(arg1, npcs.Npc21801.id, 0, false, 0)
    this:LevelReadySafeCall(function(arg1)
        this:TransmitPlayerByQuestId(7515101, 3, nil, nil, nil)
    end)
end

function Quest75151:OnSubFinish7515101(arg1)
    print("OnSubFinish7515101")
    this:SafeDestroyQuestNpc(npcs.Npc21801.alias, 101)
    this:LevelReadySafeCall(function(arg1)
        this:TransmitPlayerByQuestId(7515101, 7, nil, nil, nil)
    end)
end

function Quest75151:OnSubStart7515124(arg1)
    print("OnSubStart7515124")
    this:CreateQuestNpc(arg1, npcs.Npc21772.id, 0, false, 0)
end

function Quest75151:OnSubFinish7515124(arg1)
    print("OnSubFinish7515124")
    this:SafeDestroyQuestNpc(npcs.Npc21772.alias, 3)
end

return Quest75151
