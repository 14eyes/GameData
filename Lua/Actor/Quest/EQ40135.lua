require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40135 = class("Quest40135", QuestActorProxy)
Quest40135.defaultAlias = "Quest40135"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40135:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013509"] = self.OnSubStart4013509,
        ["4013501"] = self.OnSubStart4013501,
        ["4013502"] = self.OnSubStart4013502,
        ["4013504"] = self.OnSubStart4013504,
        ["4013505"] = self.OnSubStart4013505,
        ["4013517"] = self.OnSubStart4013517,
        ["4013506"] = self.OnSubStart4013506,
        ["4013507"] = self.OnSubStart4013507,
        ["4013508"] = self.OnSubStart4013508,
        ["4013518"] = self.OnSubStart4013518,
        ["4013510"] = self.OnSubStart4013510,
        ["4013511"] = self.OnSubStart4013511,
        ["4013503"] = self.OnSubStart4013503,
        ["4013519"] = self.OnSubStart4013519,
        ["4013516"] = self.OnSubStart4013516,
        ["4013512"] = self.OnSubStart4013512,
        ["4013513"] = self.OnSubStart4013513,
        ["4013514"] = self.OnSubStart4013514,
        ["4013515"] = self.OnSubStart4013515
    }
end

function Quest40135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013509"] = self.OnSubFinish4013509,
        ["4013501"] = self.OnSubFinish4013501,
        ["4013502"] = self.OnSubFinish4013502,
        ["4013504"] = self.OnSubFinish4013504,
        ["4013505"] = self.OnSubFinish4013505,
        ["4013517"] = self.OnSubFinish4013517,
        ["4013506"] = self.OnSubFinish4013506,
        ["4013507"] = self.OnSubFinish4013507,
        ["4013508"] = self.OnSubFinish4013508,
        ["4013518"] = self.OnSubFinish4013518,
        ["4013510"] = self.OnSubFinish4013510,
        ["4013511"] = self.OnSubFinish4013511,
        ["4013503"] = self.OnSubFinish4013503,
        ["4013519"] = self.OnSubFinish4013519,
        ["4013516"] = self.OnSubFinish4013516,
        ["4013512"] = self.OnSubFinish4013512,
        ["4013513"] = self.OnSubFinish4013513,
        ["4013514"] = self.OnSubFinish4013514,
        ["4013515"] = self.OnSubFinish4013515
    }
end

function Quest40135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4013508"] = self.OnSubFailed4013508,
        ["4013519"] = self.OnSubFailed4013519,
        ["4013516"] = self.OnSubFailed4013516,
        ["4013512"] = self.OnSubFailed4013512
    }
end

function Quest40135:Start()
    print("Start")
end

function Quest40135:OnDestroy()
    print("OnDestroy")
end

function Quest40135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40135:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 1088)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 1088)
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30439Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30438Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30438Data.alias, 1088)
    this:SafeDestroyQuestNpc(npcs.Npc30436Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30436Data.alias, 1088)
    this:SafeDestroyQuestNpc(npcs.Npc30502Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40135Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40135Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40135Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40135Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40135Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q4013517Trigger2", 3, false)
    this:DestroyNpcTrigger("Q4013501N1035Trigger")
    this:DestroyNpcTrigger("Q4013502N1035Trigger")
    this:DestroyNpcTrigger("Q4013503N1081Trigger")
    this:DestroyNpcTrigger("Q4013510N1035Trigger")
    this:DestroyNpcTrigger("Q4013511N1035Trigger")
    this:DestroyNpcTrigger("Q4013513N1081Trigger")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40135:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40135:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40135:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40135:OnMovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
end

function Quest40135:OnMoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest40135:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest4013508")
        actorUtils.FinishQuestID(false, 4013508)
    elseif arg1 == 2 then
        this:TransmitPlayerWithDialogTextByQuestId(4013510, 2, datas.DialogsId_02, 0.5)
    end
end

function Quest40135:OnSubStart4013509(arg1)
    print("OnSubStart4013509")
end

function Quest40135:OnSubFinish4013509(arg1)
    print("OnSubFinish4013509")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40135:OnSubStart4013501(arg1)
    print("OnSubStart4013501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 4013501, 0, 6, 1)
end

function Quest40135:OnSubFinish4013501(arg1)
    print("OnSubFinish4013501")
    this:TransmitPlayerWithDialogTextByQuestId(4013501, 1, datas.DialogsId_01, 0.5)
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40135:OnSubStart4013502(arg1)
    print("OnSubStart4013502")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1035Data.id, 4013502, 0, 20, 1, false)
    end)
end

function Quest40135:OnSubFinish4013502(arg1)
    print("OnSubFinish4013502")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    end)

    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
end

function Quest40135:OnSubStart4013504(arg1)
    print("OnSubStart4013504")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2604Data.id, 0)
    end)
end

function Quest40135:OnSubFinish4013504(arg1)
    print("OnSubFinish4013504")
    this:ClearNarratorTask()
end

function Quest40135:OnSubStart4013505(arg1)
    print("OnSubStart4013505")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
    end)
end

function Quest40135:OnSubFinish4013505(arg1)
    print("OnSubFinish4013505")
    this:ClearNarratorTask()
end

function Quest40135:OnSubStart4013517(arg1)
    print("OnSubStart4013517")
    actorMgr:CreateActorWithPos("Q4013517Trigger2", "Actor/Gadget/Q4013517Trigger2", 70900002, 0, {x = 2192.725, y = 440.109, z = 4490.167}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40135:OnSubFinish4013517(arg1)
    print("OnSubFinish4013517")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
    this:ActorDestroy("Q4013517Trigger2")
end

function Quest40135:OnSubStart4013506(arg1)
    print("OnSubStart4013506")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30435Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30439Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30438Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30438Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc30436Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30438Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40135:OnSubFinish4013506(arg1)
    print("OnSubFinish4013506")
end

function Quest40135:OnSubStart4013507(arg1)
    print("OnSubStart4013507")
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30438Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30438Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40135:OnSubFinish4013507(arg1)
    print("OnSubFinish4013507")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30438Data.alias, 3)
end

function Quest40135:OnSubStart4013508(arg1)
    print("OnSubStart4013508")
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30502Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_03)
    end)

    this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40135:OnSubFinish4013508(arg1)
    print("OnSubFinish4013508")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40135:OnSubFailed4013508(arg1)
    print("OnSubFailed4013508")
    this:ClearNarratorTask()
    this:DestroyQuestNpcActor(npcs.Npc30502Data.alias, 3)
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40135:OnSubStart4013518(arg1)
    print("OnSubStart4013518")
    actorMgr:CreateActorWithPos("Q40135Trigger3", "Actor/Gadget/Q40135Trigger3", 70900002, 0, {x = 2196.862, y = 440.582, z = 4483.789}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40135:OnSubFinish4013518(arg1)
    print("OnSubFinish4013518")
    this:ActorDestroy("Q40135Trigger3")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_05)
end

function Quest40135:OnSubStart4013510(arg1)
    print("OnSubStart4013510")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1035Data.id, 4013510, 0, 50, 1, true)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30436Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40135:OnSubFinish4013510(arg1)
    print("OnSubFinish4013510")
    this:TransmitPlayerWithDialogTextByQuestId(4013510, 1, datas.DialogsId, 10)
    this:SafeDestroyQuestNpc(npcs.Npc30502Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 1088)
    this:SafeDestroyQuestNpc(npcs.Npc30436Data.alias, 3)
end

function Quest40135:OnSubStart4013511(arg1)
    print("OnSubStart4013511")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1035Data.id, 4013511, 0, 30, 1, false)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40135:OnSubFinish4013511(arg1)
    print("OnSubFinish4013511")
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30439Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(false)
    this:TransmitPlayerWithDialogTextByQuestId(4013511, 1, datas.DialogsId_02, 0.5)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30439Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
end

function Quest40135:OnSubStart4013503(arg1)
    print("OnSubStart4013503")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013503, 0, 10, 1)
    end)
end

function Quest40135:OnSubFinish4013503(arg1)
    print("OnSubFinish4013503")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

function Quest40135:OnSubStart4013519(arg1)
    print("OnSubStart4013519")
    actorMgr:CreateActorWithPos("Q40135Trigger4", "Actor/Gadget/Q40135Trigger4", 70900002, 0, points.TPos_Q40135Trigger4.pos, points.TPos_Q40135Trigger4.rot, true, false, 3)
end

function Quest40135:OnSubFinish4013519(arg1)
    print("OnSubFinish4013519")
    this:ActorDestroy("Q40135Trigger4")
end

function Quest40135:OnSubFailed4013519(arg1)
    print("OnSubFailed4013519")
    this:ActorDestroy("Q40135Trigger4")
end

function Quest40135:OnSubStart4013516(arg1)
    print("OnSubStart4013516")
    actorMgr:CreateActorWithPos("Q40135Trigger2", "Actor/Gadget/Q40135Trigger2", 70900002, 0, points.TPos_Q40135Trigger2.pos, points.TPos_Q40135Trigger2.rot, true, false, 3)
end

function Quest40135:OnSubFinish4013516(arg1)
    print("OnSubFinish4013516")
    this:ActorDestroy("Q40135Trigger2")
end

function Quest40135:OnSubFailed4013516(arg1)
    print("OnSubFailed4013516")
    this:ActorDestroy("Q40135Trigger2")
end

function Quest40135:OnSubStart4013512(arg1)
    print("OnSubStart4013512")
    actorMgr:CreateActorWithPos("Q40135Trigger", "Actor/Gadget/Q40135Trigger", 70900002, 0, points.TPos_Q40135Trigger.pos, points.TPos_Q40135Trigger.rot, true, false, 3)
end

function Quest40135:OnSubFinish4013512(arg1)
    print("OnSubFinish4013512")
    this:ActorDestroy("Q40135Trigger")
end

function Quest40135:OnSubFailed4013512(arg1)
    print("OnSubFailed4013512")
    this:ActorDestroy("Q40135Trigger")
end

function Quest40135:OnSubStart4013513(arg1)
    print("OnSubStart4013513")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1081Data.id, 4013513, 0, 35, 1)
end

function Quest40135:OnSubFinish4013513(arg1)
    print("OnSubFinish4013513")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_04)
    end)
end

function Quest40135:OnSubStart4013514(arg1)
    print("OnSubStart4013514")
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1081Data.alias, 40135)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 7, 5, -1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1081Data.alias, 40135)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 7, 5, -1, function(arg1)
            actorUtils.FinishQuestID(false, 4013514)
        end, nil, nil, arg1.OnMovePause, arg1.OnMoveResume, nil, true)
    end, nil, nil, self.OnMovePause, self.OnMoveResume, nil, true)
end

function Quest40135:OnSubFinish4013514(arg1)
    print("OnSubFinish4013514")
    this:ClearNarratorTask()
end

function Quest40135:OnSubStart4013515(arg1)
    print("OnSubStart4013515")
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    actorMgr:CreateActorWithPos("Q40135Trigger1", "Actor/Gadget/Q40135Trigger1", 70900002, 0, points.TPos_Q40135Trigger1.pos, points.TPos_Q40135Trigger1.rot, true, false, 3)
end

function Quest40135:OnSubFinish4013515(arg1)
    print("OnSubFinish4013515")
    this:ActorDestroy("Q40135Trigger1")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
end

return Quest40135
