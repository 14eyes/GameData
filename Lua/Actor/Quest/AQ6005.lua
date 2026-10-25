require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6005 = class("Quest6005", QuestActorProxy)
Quest6005.defaultAlias = "Quest6005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600501"] = self.OnSubStart600501,
        ["600502"] = self.OnSubStart600502,
        ["600503"] = self.OnSubStart600503,
        ["600504"] = self.OnSubStart600504,
        ["600505"] = self.OnSubStart600505,
        ["600506"] = self.OnSubStart600506,
        ["600507"] = self.OnSubStart600507,
        ["600517"] = self.OnSubStart600517,
        ["600516"] = self.OnSubStart600516,
        ["600508"] = self.OnSubStart600508,
        ["600509"] = self.OnSubStart600509,
        ["600510"] = self.OnSubStart600510,
        ["600513"] = self.OnSubStart600513,
        ["600514"] = self.OnSubStart600514,
        ["600511"] = self.OnSubStart600511,
        ["600515"] = self.OnSubStart600515,
        ["600512"] = self.OnSubStart600512
    }
end

function Quest6005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600501"] = self.OnSubFinish600501,
        ["600502"] = self.OnSubFinish600502,
        ["600503"] = self.OnSubFinish600503,
        ["600504"] = self.OnSubFinish600504,
        ["600505"] = self.OnSubFinish600505,
        ["600506"] = self.OnSubFinish600506,
        ["600507"] = self.OnSubFinish600507,
        ["600517"] = self.OnSubFinish600517,
        ["600516"] = self.OnSubFinish600516,
        ["600508"] = self.OnSubFinish600508,
        ["600509"] = self.OnSubFinish600509,
        ["600510"] = self.OnSubFinish600510,
        ["600513"] = self.OnSubFinish600513,
        ["600514"] = self.OnSubFinish600514,
        ["600511"] = self.OnSubFinish600511,
        ["600515"] = self.OnSubFinish600515,
        ["600512"] = self.OnSubFinish600512
    }
end

function Quest6005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["600507"] = self.OnSubFailed600507,
        ["600516"] = self.OnSubFailed600516,
        ["600509"] = self.OnSubFailed600509,
        ["600511"] = self.OnSubFailed600511,
        ["600515"] = self.OnSubFailed600515
    }
end

function Quest6005:Start()
    print("Start")
end

function Quest6005:OnDestroy()
    print("OnDestroy")
end

function Quest6005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6005:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600503trigger")
    this:ActorDestroy("Q600514Trigger")
    this:ActorDestroy("Q600616trigger")
    this:ActorDestroy("Q600517Trigger")
end

function Quest6005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6005:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6005:OnSubStart600501(arg1)
    print("OnSubStart600501")
    actorUtils.FinishQuestID(false, 600501)
end

function Quest6005:OnSubFinish600501(arg1)
    print("OnSubFinish600501")
    this:QuestNarratorTask(datas.NarratorWithId600501, nil)
    this:SetNavigationByMainId(6005, true)
end

function Quest6005:OnSubStart600502(arg1)
    print("OnSubStart600502")
    this:NpcCreateWithNpcTrigger(npcs.Npc15349.id, 0, 10, 600502)
    this:CreateQuestNpc(arg1, npcs.Npc6236.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6243.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6245.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15358.id, 0, false, 0)
end

function Quest6005:OnSubFinish600502(arg1)
    print("OnSubFinish600502")
    this:SafeDestroyQuestNpc(npcs.Npc15349.alias, 3)
    this:ClearNarratorTask()
end

function Quest6005:OnSubStart600503(arg1)
    print("OnSubStart600503")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6236.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6236.alias, 6005):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc6243.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6243.alias, 6005):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc6245.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6245.alias, 6005):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15358.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15358.alias, 6005):DoFreeStyle(1192, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15345.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15358.alias, 6005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6236.alias, 6005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6243.alias, 6005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6245.alias, 6005):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q600503trigger", "Actor/Gadget/Q600503trigger", 70900002, 0, points._Q600503triggerPoint_.pos, points._Q600503triggerPoint_.rot, true, false, 3)
    end)
end

function Quest6005:OnSubFinish600503(arg1)
    print("OnSubFinish600503")
    this:SafeDestroyQuestNpc(npcs.Npc6236.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6243.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6245.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15358.alias, 3)
    this:GetQuestNpcActor(npcs.Npc15358.alias, 6005):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6236.alias, 6005):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6243.alias, 6005):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6245.alias, 6005):DisableInteeHeadCtrl(false)
    this:ShowBlackScreenWithDialogText(0.2, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest6005:OnSubStart600504(arg1)
    print("OnSubStart600504")
    this:NpcCreateWithNpcTrigger(npcs.Npc15345.id, 0, 30, 600504)
end

function Quest6005:OnSubFinish600504(arg1)
    print("OnSubFinish600504")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
end

function Quest6005:OnSubStart600505(arg1)
    print("OnSubStart600505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600505, 0, 45, 0, npcs.Npc15345.id)
end

function Quest6005:OnSubFinish600505(arg1)
    print("OnSubFinish600505")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
end

function Quest6005:OnSubStart600506(arg1)
    print("OnSubStart600506")
    this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 5, 600506)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 6005):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest6005:OnSubFinish600506(arg1)
    print("OnSubFinish600506")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
        this:QuestNarratorTask(datas.NarratorWithId600506, nil)
    end)
end

function Quest6005:OnSubStart600507(arg1)
    print("OnSubStart600507")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15345.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 6005):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 10, 600507)
        this:GetQuestNpcActor(npcs.Npc15345.alias, 6005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 6005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Paimon.alias, 6005):DisableInteeHeadCtrl(true)
        globalActor:DisablePaimonInProfilePage(datas.DisablePaimonInProfilePageHandWriteTable)
    end)
end

function Quest6005:OnSubFinish600507(arg1)
    print("OnSubFinish600507")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
    this:GetQuestNpcActor(npcs.Npc15345.alias, 6005):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 6005):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Paimon.alias, 6005):DisableInteeHeadCtrl(false)
    globalActor:ResumePaimonInProfilePage(datas.DisablePaimonInProfilePageHandWriteTable)
end

function Quest6005:OnSubFailed600507(arg1)
    print("OnSubFailed600507")
    globalActor:ResumePaimonInProfilePage(datas.DisablePaimonInProfilePageHandWriteTable)
    this:ClearNpcTriggerByQuestId(600507)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest6005:OnSubStart600517(arg1)
    print("OnSubStart600517")
    actorMgr:CreateActorWithPos("Q600517Trigger", "Actor/Gadget/Q600517Trigger", 70900002, 0, points._Q600517TriggerPoint_.pos, points._Q600517TriggerPoint_.rot, true, false, 3)
end

function Quest6005:OnSubFinish600517(arg1)
    print("OnSubFinish600517")
end

function Quest6005:OnSubStart600516(arg1)
    print("OnSubStart600516")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15345.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15351.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15352.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15356.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15357.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15358.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q600616trigger", "Actor/Gadget/Q600616trigger", 70900002, 0, points._Q600616triggerPoint_.pos, points._Q600616triggerPoint_.rot, true, false, 3)
    end)
end

function Quest6005:OnSubFinish600516(arg1)
    print("OnSubFinish600516")
end

function Quest6005:OnSubFailed600516(arg1)
    print("OnSubFailed600516")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15351.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15352.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15357.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15358.alias, 3)
    this:ActorDestroy("Q600616trigger")
end

function Quest6005:OnSubStart600508(arg1)
    print("OnSubStart600508")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(600508, 0, 40, 0, npcs.Npc15345.id)
        this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest01")
        actorUtils.BanUIByQuest(16, false, 6005)
        actorUtils.BanUIByQuest(27, false, 6005)
    end)
end

function Quest6005:OnSubFinish600508(arg1)
    print("OnSubFinish600508")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15351.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15352.alias, 3)
end

function Quest6005:OnSubStart600509(arg1)
    print("OnSubStart600509")
    this:CreateQuestNpc(arg1, npcs.Npc15357.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15357.alias, 6005):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15358.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15358.alias, 6005):DoFreeStyle(5030, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15356.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15356.alias, 6005):DoFreeStyle(1070, true, nil, true, true, false, true)
    actorUtils.BanUIByQuest(16, true, 6005)
    actorUtils.BanUIByQuest(27, true, 6005)
end

function Quest6005:OnSubFinish600509(arg1)
    print("OnSubFinish600509")
    actorUtils.BanUIByQuest(16, false, 6005)
    actorUtils.BanUIByQuest(27, false, 6005)
end

function Quest6005:OnSubFailed600509(arg1)
    print("OnSubFailed600509")
    actorUtils.BanUIByQuest(16, false, 6005)
    actorUtils.BanUIByQuest(27, false, 6005)
end

function Quest6005:OnSubStart600510(arg1)
    print("OnSubStart600510")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600510, 0, 80, 0, npcs.Npc15345.id)
end

function Quest6005:OnSubFinish600510(arg1)
    print("OnSubFinish600510")
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15357.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15358.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
end

function Quest6005:OnSubStart600513(arg1)
    print("OnSubStart600513")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600513, 0, 80, 0, npcs.Npc15345.id)
end

function Quest6005:OnSubFinish600513(arg1)
    print("OnSubFinish600513")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest6005:OnSubStart600514(arg1)
    print("OnSubStart600514")
    actorMgr:CreateActorWithPos("Q600514Trigger", "Actor/Gadget/Q600514Trigger", 70900002, 0, points._Q600514TriggerPoint_.pos, points._Q600514TriggerPoint_.rot, true, false, 3)
end

function Quest6005:OnSubFinish600514(arg1)
    print("OnSubFinish600514")
end

function Quest6005:OnSubStart600511(arg1)
    print("OnSubStart600511")
    this:DeployStoryByQuest(110600501)
end

function Quest6005:OnSubFinish600511(arg1)
    print("OnSubFinish600511")
    this:CancelStoryByQuest(110600501)
end

function Quest6005:OnSubFailed600511(arg1)
    print("OnSubFailed600511")
    this:CancelStoryByQuest(110600501)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest6005:OnSubStart600515(arg1)
    print("OnSubStart600515")
end

function Quest6005:OnSubFinish600515(arg1)
    print("OnSubFinish600515")
end

function Quest6005:OnSubFailed600515(arg1)
    print("OnSubFailed600515")
    this:CancelStoryByQuest(110600501)
end

function Quest6005:OnSubStart600512(arg1)
    print("OnSubStart600512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600512, 0, 10, 0, npcs.Npc15345.id)
end

function Quest6005:OnSubFinish600512(arg1)
    print("OnSubFinish600512")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
end

return Quest6005
