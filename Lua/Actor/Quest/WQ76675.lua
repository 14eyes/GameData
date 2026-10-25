require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76675 = class("Quest76675", QuestActorProxy)
Quest76675.defaultAlias = "Quest76675"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76675:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76675:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667511"] = self.OnSubStart7667511,
        ["7667501"] = self.OnSubStart7667501,
        ["7667502"] = self.OnSubStart7667502,
        ["7667503"] = self.OnSubStart7667503,
        ["7667504"] = self.OnSubStart7667504,
        ["7667512"] = self.OnSubStart7667512,
        ["7667514"] = self.OnSubStart7667514,
        ["7667517"] = self.OnSubStart7667517,
        ["7667515"] = self.OnSubStart7667515,
        ["7667516"] = self.OnSubStart7667516,
        ["7667505"] = self.OnSubStart7667505,
        ["7667506"] = self.OnSubStart7667506,
        ["7667507"] = self.OnSubStart7667507,
        ["7667508"] = self.OnSubStart7667508,
        ["7667509"] = self.OnSubStart7667509,
        ["7667513"] = self.OnSubStart7667513,
        ["7667510"] = self.OnSubStart7667510
    }
end

function Quest76675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667511"] = self.OnSubFinish7667511,
        ["7667501"] = self.OnSubFinish7667501,
        ["7667502"] = self.OnSubFinish7667502,
        ["7667503"] = self.OnSubFinish7667503,
        ["7667504"] = self.OnSubFinish7667504,
        ["7667512"] = self.OnSubFinish7667512,
        ["7667514"] = self.OnSubFinish7667514,
        ["7667517"] = self.OnSubFinish7667517,
        ["7667515"] = self.OnSubFinish7667515,
        ["7667516"] = self.OnSubFinish7667516,
        ["7667505"] = self.OnSubFinish7667505,
        ["7667506"] = self.OnSubFinish7667506,
        ["7667507"] = self.OnSubFinish7667507,
        ["7667508"] = self.OnSubFinish7667508,
        ["7667509"] = self.OnSubFinish7667509,
        ["7667513"] = self.OnSubFinish7667513,
        ["7667510"] = self.OnSubFinish7667510
    }
end

function Quest76675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76675:Start()
    print("Start")
end

function Quest76675:OnDestroy()
    print("OnDestroy")
end

function Quest76675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76675:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76675:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7667502Trigger")
    this:ActorDestroy("Q7667511Trigger")
    this:ActorDestroy("Q7667512Trigger")
    this:ActorDestroy("Q7667513Trigger")
end

function Quest76675:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76675:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76675:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76675:OnSubStart7667511(arg1)
    print("OnSubStart7667511")
    actorMgr:CreateActorWithPos("Q7667511Trigger", "Actor/Gadget/Q7667511Trigger", 70900002, 0, points._Q7667511TriggerPoint_.pos, points._Q7667511TriggerPoint_.rot, true, false, 3)
end

function Quest76675:OnSubFinish7667511(arg1)
    print("OnSubFinish7667511")
    this:ActorDestroy("Q7667511Trigger")
end

function Quest76675:OnSubStart7667501(arg1)
    print("OnSubStart7667501")
    this:NpcCreateWithNpcTrigger(npcs.Npc1310.id, 0, 10, 7667501)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 76675):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7599.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7599.alias, 76675):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 76675):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7599.alias, 76675):DisableInteeHeadCtrl(true)
end

function Quest76675:OnSubFinish7667501(arg1)
    print("OnSubFinish7667501")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7599.alias, 3)
end

function Quest76675:OnSubStart7667502(arg1)
    print("OnSubStart7667502")
    this:CreateQuestNpc(arg1, npcs.Npc7600.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7600.alias, 76675):DoFreeStyle(4180, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7667502Trigger", "Actor/Gadget/Q7667502Trigger", 70900002, 0, points._Q7667502TriggerPoint_.pos, points._Q7667502TriggerPoint_.rot, true, false, 3)
end

function Quest76675:OnSubFinish7667502(arg1)
    print("OnSubFinish7667502")
    this:QuestNarratorTask(datas.NarratorWithId_7667501, nil)
end

function Quest76675:OnSubStart7667503(arg1)
    print("OnSubStart7667503")
    this:GetQuestNpcActor(npcs.Npc7600.alias, 76675):DoFreeStyle(4180, true, nil, true, true, false, false)
end

function Quest76675:OnSubFinish7667503(arg1)
    print("OnSubFinish7667503")
    this:GetQuestNpcActor(npcs.Npc7600.alias, 76675):DoFreeStateTrigger()
end

function Quest76675:OnSubStart7667504(arg1)
    print("OnSubStart7667504")
    this:NpcCreateWithNpcTrigger(npcs.Npc7600.id, 0, 10, 7667504)
end

function Quest76675:OnSubFinish7667504(arg1)
    print("OnSubFinish7667504")
    this:SafeDestroyQuestNpc(npcs.Npc7600.alias, 3)
end

function Quest76675:OnSubStart7667512(arg1)
    print("OnSubStart7667512")
    actorMgr:CreateActorWithPos("Q7667512Trigger", "Actor/Gadget/Q7667512Trigger", 70900002, 0, points._Q7667512TriggerPoint_.pos, points._Q7667512TriggerPoint_.rot, true, false, 3)
    this:CancelStoryByQuest(147667500)
end

function Quest76675:OnSubFinish7667512(arg1)
    print("OnSubFinish7667512")
end

function Quest76675:OnSubStart7667514(arg1)
    print("OnSubStart7667514")
end

function Quest76675:OnSubFinish7667514(arg1)
    print("OnSubFinish7667514")
end

function Quest76675:OnSubStart7667517(arg1)
    print("OnSubStart7667517")
end

function Quest76675:OnSubFinish7667517(arg1)
    print("OnSubFinish7667517")
end

function Quest76675:OnSubStart7667515(arg1)
    print("OnSubStart7667515")
end

function Quest76675:OnSubFinish7667515(arg1)
    print("OnSubFinish7667515")
end

function Quest76675:OnSubStart7667516(arg1)
    print("OnSubStart7667516")
end

function Quest76675:OnSubFinish7667516(arg1)
    print("OnSubFinish7667516")
end

function Quest76675:OnSubStart7667505(arg1)
    print("OnSubStart7667505")
    this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, function(arg1)
        this:ShowTutorialDialog(2524, nil)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:DeployStoryByQuest(147667500)
        end)
    end, nil, nil)
end

function Quest76675:OnSubFinish7667505(arg1)
    print("OnSubFinish7667505")
end

function Quest76675:OnSubStart7667506(arg1)
    print("OnSubStart7667506")
    this:DeployStoryByQuest(147667500)
end

function Quest76675:OnSubFinish7667506(arg1)
    print("OnSubFinish7667506")
end

function Quest76675:OnSubStart7667507(arg1)
    print("OnSubStart7667507")
    this:DeployStoryByQuest(147667500)
end

function Quest76675:OnSubFinish7667507(arg1)
    print("OnSubFinish7667507")
end

function Quest76675:OnSubStart7667508(arg1)
    print("OnSubStart7667508")
    this:DeployStoryByQuest(147667500)
end

function Quest76675:OnSubFinish7667508(arg1)
    print("OnSubFinish7667508")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    this:CancelStoryByQuest(147667500)
    this:ClearNarratorTask()
end

function Quest76675:OnSubStart7667509(arg1)
    print("OnSubStart7667509")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1310.id, 0, 7667509, 15, true)
end

function Quest76675:OnSubFinish7667509(arg1)
    print("OnSubFinish7667509")
end

function Quest76675:OnSubStart7667513(arg1)
    print("OnSubStart7667513")
    this:DeployStoryByQuest(147667502)
end

function Quest76675:OnSubFinish7667513(arg1)
    print("OnSubFinish7667513")
    this:CancelStoryByQuest(147667502)
end

function Quest76675:OnSubStart7667510(arg1)
    print("OnSubStart7667510")
    this:NpcCreateWithNpcTrigger(npcs.Npc1310.id, 0, 7, 7667510)
    this:DeployStoryByQuest(147667501)
    actorMgr:CreateActorWithPos("Q7667513Trigger", "Actor/Gadget/Q7667513Trigger", 70900002, 0, points._Q7667513TriggerPoint_.pos, points._Q7667513TriggerPoint_.rot, true, false, 3)
end

function Quest76675:OnSubFinish7667510(arg1)
    print("OnSubFinish7667510")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:CancelStoryByQuest(147667501)
    this:ActorDestroy("Q7667513Trigger")
    globalActor:ResumePaimonInProfilePage({3})
end

return Quest76675
