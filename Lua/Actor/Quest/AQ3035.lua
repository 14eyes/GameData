require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3035 = class("Quest3035", QuestActorProxy)
Quest3035.defaultAlias = "Quest3035"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest3035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest3035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303501"] = self.OnSubStart303501,
        ["303502"] = self.OnSubStart303502,
        ["303503"] = self.OnSubStart303503,
        ["303504"] = self.OnSubStart303504,
        ["303505"] = self.OnSubStart303505,
        ["303506"] = self.OnSubStart303506,
        ["303508"] = self.OnSubStart303508,
        ["303510"] = self.OnSubStart303510,
        ["303535"] = self.OnSubStart303535,
        ["303511"] = self.OnSubStart303511,
        ["303512"] = self.OnSubStart303512,
        ["303513"] = self.OnSubStart303513,
        ["303514"] = self.OnSubStart303514,
        ["303530"] = self.OnSubStart303530,
        ["303515"] = self.OnSubStart303515,
        ["303509"] = self.OnSubStart303509,
        ["303507"] = self.OnSubStart303507,
        ["303519"] = self.OnSubStart303519,
        ["303516"] = self.OnSubStart303516,
        ["303517"] = self.OnSubStart303517,
        ["303531"] = self.OnSubStart303531,
        ["303518"] = self.OnSubStart303518,
        ["303520"] = self.OnSubStart303520,
        ["303521"] = self.OnSubStart303521,
        ["303522"] = self.OnSubStart303522,
        ["303524"] = self.OnSubStart303524,
        ["303523"] = self.OnSubStart303523,
        ["303532"] = self.OnSubStart303532,
        ["303525"] = self.OnSubStart303525,
        ["303526"] = self.OnSubStart303526,
        ["303527"] = self.OnSubStart303527,
        ["303534"] = self.OnSubStart303534,
        ["303533"] = self.OnSubStart303533,
        ["303528"] = self.OnSubStart303528,
        ["303529"] = self.OnSubStart303529
    }
end

function Quest3035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303501"] = self.OnSubFinish303501,
        ["303502"] = self.OnSubFinish303502,
        ["303503"] = self.OnSubFinish303503,
        ["303504"] = self.OnSubFinish303504,
        ["303505"] = self.OnSubFinish303505,
        ["303506"] = self.OnSubFinish303506,
        ["303508"] = self.OnSubFinish303508,
        ["303510"] = self.OnSubFinish303510,
        ["303535"] = self.OnSubFinish303535,
        ["303511"] = self.OnSubFinish303511,
        ["303512"] = self.OnSubFinish303512,
        ["303513"] = self.OnSubFinish303513,
        ["303514"] = self.OnSubFinish303514,
        ["303530"] = self.OnSubFinish303530,
        ["303515"] = self.OnSubFinish303515,
        ["303509"] = self.OnSubFinish303509,
        ["303507"] = self.OnSubFinish303507,
        ["303519"] = self.OnSubFinish303519,
        ["303516"] = self.OnSubFinish303516,
        ["303517"] = self.OnSubFinish303517,
        ["303531"] = self.OnSubFinish303531,
        ["303518"] = self.OnSubFinish303518,
        ["303520"] = self.OnSubFinish303520,
        ["303521"] = self.OnSubFinish303521,
        ["303522"] = self.OnSubFinish303522,
        ["303524"] = self.OnSubFinish303524,
        ["303523"] = self.OnSubFinish303523,
        ["303532"] = self.OnSubFinish303532,
        ["303525"] = self.OnSubFinish303525,
        ["303526"] = self.OnSubFinish303526,
        ["303527"] = self.OnSubFinish303527,
        ["303534"] = self.OnSubFinish303534,
        ["303533"] = self.OnSubFinish303533,
        ["303528"] = self.OnSubFinish303528,
        ["303529"] = self.OnSubFinish303529
    }
end

function Quest3035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["303513"] = self.OnSubFailed303513,
        ["303530"] = self.OnSubFailed303530,
        ["303519"] = self.OnSubFailed303519,
        ["303521"] = self.OnSubFailed303521,
        ["303532"] = self.OnSubFailed303532,
        ["303525"] = self.OnSubFailed303525,
        ["303534"] = self.OnSubFailed303534,
        ["303533"] = self.OnSubFailed303533,
        ["303529"] = self.OnSubFailed303529
    }
end

function Quest3035:Start()
    print("Start")
end

function Quest3035:OnDestroy()
    print("OnDestroy")
end

function Quest3035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16565.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc12816.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc12817.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc13992.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc1058.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc13993.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16565.alias, 20346)
    this:SafeDestroyQuestNpc(npcs.Npc20846.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16672.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16668.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16671.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16669.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc1053.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc1064.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16794.alias, 20343)
    this:SafeDestroyQuestNpc(npcs.Npc16678.alias, 20343)
    this:CancelStoryByQuest(110303502)
    this:RecycleAllRes()
end

function Quest3035:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q303504_TriggerIn", 3035)
    this:ActorDestroy("Q303508_TriggerIn", 3035)
    this:ActorDestroy("Q303510_TriggerIn", 3035)
    this:ActorDestroy("Q303511_TriggerIn02", 3035)
    this:ActorDestroy("Q303511_TriggerIn", 3035)
    this:ActorDestroy("Q303535_TriggerIn", 3035)
    this:ActorDestroy("Q303512_TriggerIn", 3035)
    this:ActorDestroy("Q303517_TriggerIn", 3035)
    this:ActorDestroy("Q303517_TriggerIn", 3035)
    this:ActorDestroy("Q303518_TriggerIn", 3035)
    this:ActorDestroy("Q303520_TriggerIn", 3035)
    this:ActorDestroy("Q303524_TriggerIn", 3035)
    this:ActorDestroy("Q303525_TriggerIn", 3035)
    this:ActorDestroy("Q303527_TriggerIn", 3035)
    this:ActorDestroy("Q303527_TriggerIn02", 3035)
    this:ActorDestroy("Q303527_TriggerIn03", 3035)
    this:ActorDestroy("Q303528_TriggerIn", 3035)
    this:ActorDestroy("Q303507_TriggerIn", 3035)
    this:ActorDestroy("Q303509_TriggerIn", 3035)
    this:ActorDestroy("Q303515_TriggerIn", 3035)
    this:ActorDestroy("Q303523_TriggerIn", 3035)
    this:ActorDestroy("Q303529_TriggerIn", 3035)
    this:ActorDestroy("Q303529_TriggerIn02", 3035)
    this:ActorDestroy("Q303532_TriggerIn", 3035)
    this:ActorDestroy("Q303533_TriggerIn", 3035)
end

function Quest3035:ActorDestroy(arg1, arg2)
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

function Quest3035:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest3035:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest3035:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest3035:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest3035:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest3035:OnSubStart303501(arg1)
    print("OnSubStart303501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(303501, 0, 5, 1, npcs.Npc16565.id)
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:DeployStoryByQuest(110303502)
end

function Quest3035:OnSubFinish303501(arg1)
    print("OnSubFinish303501")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
end

function Quest3035:OnSubStart303502(arg1)
    print("OnSubStart303502")
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16672.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16672.alias, 3035):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16672.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13993.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 3035):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16668.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16668.alias, 3035):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16668.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16671.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16671.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16671.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16669.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16669.alias, 3035):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16669.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc12816.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12816.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc12817.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12817.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16794.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16794.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16678.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16678.alias, 3035):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16678.alias, 3035):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc13992.id, 0, 13, 303502)
    this:GetQuestNpcActor(npcs.Npc13992.alias, 3035):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110303502)
end

function Quest3035:OnSubFinish303502(arg1)
    print("OnSubFinish303502")
    this:NpcDestroyImmediately(20343, npcs.Npc16794.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16678.alias)
end

function Quest3035:OnSubStart303503(arg1)
    print("OnSubStart303503")
    this:NpcCreateWithNoBlack(npcs.Npc16565.id, 0, 8, 303503, true, 303502)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16672.alias, 3035):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16672.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 3035):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16668.alias, 3035):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16668.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16671.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16671.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16669.alias, 3035):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16669.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 3035):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DoFreeStyle(1110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1064.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc12816.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12816.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc12817.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc12817.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13992.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13992.alias, 3035):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13992.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 3035):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16670.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16670.alias, 3035):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc16670.alias, 3035):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110303502)
end

function Quest3035:OnSubFinish303503(arg1)
    print("OnSubFinish303503")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1051.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16672.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16668.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16671.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16669.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1053.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1064.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc12816.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc12817.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13992.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16670.alias)
end

function Quest3035:OnSubStart303504(arg1)
    print("OnSubStart303504")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303504, 15, true)
    this:DeployStoryByQuest(110303502)
    actorMgr:CreateActorWithPos("Q303504_TriggerIn", "Actor/Gadget/Q303504_TriggerIn", 70900002, 0, points._Q303504_TriggerInPoint_.pos, points._Q303504_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303504(arg1)
    print("OnSubFinish303504")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:CancelStoryByQuest(110303502)
    this:ActorDestroy("Q303504_TriggerIn", 3035)
end

function Quest3035:OnSubStart303505(arg1)
    print("OnSubStart303505")
    this:NpcCreateWithNpcTrigger(npcs.Npc13993.id, 0, 15, 303505)
    this:CreateQuestNpc(arg1, npcs.Npc16757.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16745.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16793.id, 0, false, 0)
end

function Quest3035:OnSubFinish303505(arg1)
    print("OnSubFinish303505")
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16757.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16745.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16793.alias)
    this:ActionSafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_Q303505, nil)
        end)
    end)
end

function Quest3035:OnSubStart303506(arg1)
    print("OnSubStart303506")
end

function Quest3035:OnSubFinish303506(arg1)
    print("OnSubFinish303506")
end

function Quest3035:OnSubStart303508(arg1)
    print("OnSubStart303508")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303508, 30, true)
    actorMgr:CreateActorWithPos("Q303508_TriggerIn", "Actor/Gadget/Q303508_TriggerIn", 70900002, 0, points._Q303508_TriggerInPoint_.pos, points._Q303508_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303508(arg1)
    print("OnSubFinish303508")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303508_TriggerIn", 3035)
end

function Quest3035:OnSubStart303510(arg1)
    print("OnSubStart303510")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303510, 100, true)
    actorMgr:CreateActorWithPos("Q303510_TriggerIn", "Actor/Gadget/Q303510_TriggerIn", 70900002, 0, points._Q303510_TriggerInPoint_.pos, points._Q303510_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303510(arg1)
    print("OnSubFinish303510")
    this:NpcDestroyImmediately(20346, npcs.Npc16565.alias)
    this:ActorDestroy("Q303510_TriggerIn", 3035)
end

function Quest3035:OnSubStart303535(arg1)
    print("OnSubStart303535")
    actorMgr:CreateActorWithPos("Q303511_TriggerIn", "Actor/Gadget/Q303511_TriggerIn", 70900002, 0, points._Q303511_TriggerInPoint_.pos, points._Q303511_TriggerInPoint_.rot, true, false, 20346, nil, 0, 3035)
    actorMgr:CreateActorWithPos("Q303535_TriggerIn", "Actor/Gadget/Q303535_TriggerIn", 70900002, 0, points._Q303535_TriggerInPoint_.pos, points._Q303535_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303535(arg1)
    print("OnSubFinish303535")
    this:ActorDestroy("Q303511_TriggerIn", 3035)
    this:ActorDestroy("Q303535_TriggerIn", 3035)
end

function Quest3035:OnSubStart303511(arg1)
    print("OnSubStart303511")
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13993.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1064.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16929.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16930.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16876.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16877.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16878.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16880.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16881.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16882.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16883.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16884.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16885.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16886.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16887.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q303511_TriggerIn02", "Actor/Gadget/Q303511_TriggerIn02", 70900002, 0, points._Q303511_TriggerIn02Point_.pos, points._Q303511_TriggerIn02Point_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303511(arg1)
    print("OnSubFinish303511")
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1064.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1053.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16929.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16930.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13091.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16876.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16877.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16878.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16880.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16881.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16882.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16883.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16884.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16885.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16886.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16887.alias)
    this:ClearNarratorTask()
end

function Quest3035:OnSubStart303512(arg1)
    print("OnSubStart303512")
    actorMgr:CreateActorWithPos("Q303512_TriggerIn", "Actor/Gadget/Q303512_TriggerIn", 70900002, 0, points._Q303512_TriggerInPoint_.pos, points._Q303512_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    this:DeployRangeStoryByQuest(110303513, 20343, {x = -1519.717, y = 32.872, z = 5580.918}, 300, 310)
end

function Quest3035:OnSubFinish303512(arg1)
    print("OnSubFinish303512")
    this:ActorDestroy("Q303512_TriggerIn", 3035)
end

function Quest3035:OnSubStart303513(arg1)
    print("OnSubStart303513")
    this:DeployRangeStoryByQuest(110303513, 20343, {x = -1519.717, y = 32.872, z = 5580.918}, 300, 310)
end

function Quest3035:OnSubFinish303513(arg1)
    print("OnSubFinish303513")
end

function Quest3035:OnSubFailed303513(arg1)
    print("OnSubFailed303513")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303514(arg1)
    print("OnSubStart303514")
    this:DeployRangeStoryByQuest(110303513, 20343, {x = -1519.717, y = 32.872, z = 5580.918}, 300, 310)
end

function Quest3035:OnSubFinish303514(arg1)
    print("OnSubFinish303514")
end

function Quest3035:OnSubStart303530(arg1)
    print("OnSubStart303530")
    this:DeployRangeStoryByQuest(110303513, 20343, {x = -1519.717, y = 32.872, z = 5580.918}, 300, 310)
end

function Quest3035:OnSubFinish303530(arg1)
    print("OnSubFinish303530")
    this:CancelRangeStoryByQuest(110303513)
end

function Quest3035:OnSubFailed303530(arg1)
    print("OnSubFailed303530")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303515(arg1)
    print("OnSubStart303515")
    actorMgr:CreateActorWithPos("Q303515_TriggerIn", "Actor/Gadget/Q303515_TriggerIn", 70900002, 0, points._Q303515_TriggerInPoint_.pos, points._Q303515_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303515(arg1)
    print("OnSubFinish303515")
    this:ActorDestroy("Q303515_TriggerIn", 3035)
    this:QuestNarratorTask(datas.NarratorWithId_Q303530, nil)
    this:EnterSceneLookCamera({x = -1800.657, y = 22.871, z = 5700.919}, 1, 3, true, false)
end

function Quest3035:OnSubStart303509(arg1)
    print("OnSubStart303509")
    actorMgr:CreateActorWithPos("Q303509_TriggerIn", "Actor/Gadget/Q303509_TriggerIn", 70900002, 0, points._Q303509_TriggerInPoint_.pos, points._Q303509_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303509(arg1)
    print("OnSubFinish303509")
    this:ActorDestroy("Q303509_TriggerIn", 3035)
end

function Quest3035:OnSubStart303507(arg1)
    print("OnSubStart303507")
    actorMgr:CreateActorWithPos("Q303507_TriggerIn", "Actor/Gadget/Q303507_TriggerIn", 70900002, 0, points._Q303507_TriggerInPoint_.pos, points._Q303507_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303507(arg1)
    print("OnSubFinish303507")
    this:ActorDestroy("Q303507_TriggerIn", 3035)
end

function Quest3035:OnSubStart303519(arg1)
    print("OnSubStart303519")
    if sceneData.currSceneID == 20343 then
        this:QuestNarratorTask(datas.NarratorWithId_Q303519_01, nil)
    end
end

function Quest3035:OnSubFinish303519(arg1)
    print("OnSubFinish303519")
    this:ClearNarratorTask()
    if sceneData.currSceneID == 20343 then
        this:QuestNarratorTask(datas.NarratorWithId_Q303519_02, nil)
    end
end

function Quest3035:OnSubFailed303519(arg1)
    print("OnSubFailed303519")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303516(arg1)
    print("OnSubStart303516")
end

function Quest3035:OnSubFinish303516(arg1)
    print("OnSubFinish303516")
end

function Quest3035:OnSubStart303517(arg1)
    print("OnSubStart303517")
    if sceneData.currSceneID == 20343 then
        this:QuestNarratorTask(datas.NarratorWithId_Q303516, function(arg1)
            actorMgr:CreateActorWithPos("Q303517_TriggerIn", "Actor/Gadget/Q303517_TriggerIn", 70900002, 0, points._Q303517_TriggerInPoint_.pos, points._Q303517_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
        end)
    else
        actorMgr:CreateActorWithPos("Q303517_TriggerIn", "Actor/Gadget/Q303517_TriggerIn", 70900002, 0, points._Q303517_TriggerInPoint_.pos, points._Q303517_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    end

    this:CreateLocalGadget(70290894, "303517", {x = -1794.989, y = 23.572, z = 5699.407}, {x = 0, y = 14.295, z = 0}, 20343, nil, nil, true, 0, true)
end

function Quest3035:OnSubFinish303517(arg1)
    print("OnSubFinish303517")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303517_TriggerIn", 3035)
    this:RemoveLocalGadget(70290894, "303517")
end

function Quest3035:OnSubStart303531(arg1)
    print("OnSubStart303531")
    this:DeployRangeStoryByQuest(110303515, 20343, {x = -1817.475, y = 18.392, z = 5705.697}, 100, 110)
end

function Quest3035:OnSubFinish303531(arg1)
    print("OnSubFinish303531")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_Q303531_05, nil)
    end)
end

function Quest3035:OnSubStart303518(arg1)
    print("OnSubStart303518")
    actorMgr:CreateActorWithPos("Q303518_TriggerIn", "Actor/Gadget/Q303518_TriggerIn", 70900002, 0, points._Q303518_TriggerInPoint_.pos, points._Q303518_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    this:DeployRangeStoryByQuest(110303515, 20343, {x = -1817.475, y = 18.392, z = 5705.697}, 100, 110)
end

function Quest3035:OnSubFinish303518(arg1)
    print("OnSubFinish303518")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303518_TriggerIn", 3035)
    this:CancelRangeStoryByQuest(110303515)
end

function Quest3035:OnSubStart303520(arg1)
    print("OnSubStart303520")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1051.id, 0, 303520, 30, true)
    actorMgr:CreateActorWithPos("Q303520_TriggerIn", "Actor/Gadget/Q303520_TriggerIn", 70900002, 0, points._Q303520_TriggerInPoint_.pos, points._Q303520_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    this:CreateLocalGadget(70290894, "303520", {x = -1764.622, y = 23.536, z = 5691.334}, {x = 0, y = 15.767, z = 0}, 20343, nil, nil, true, 0, true)
    this:DeployRangeStoryByQuest(110303520, 20343, {x = -1995.221, y = 280.373, z = 4039.385}, 200, 210)
end

function Quest3035:OnSubFinish303520(arg1)
    print("OnSubFinish303520")
    this:NpcDestroyImmediately(20343, npcs.Npc1051.alias)
    this:ActorDestroy("Q303520_TriggerIn", 3035)
end

function Quest3035:OnSubStart303521(arg1)
    print("OnSubStart303521")
    if sceneData.currSceneID == 20343 then
        this:QuestNarratorTask(datas.NarratorWithId_Q303521_01, function(arg1)
            this:CallDelayByQuest("303521", 2, function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_Q303521_02, nil)
            end)
        end)
    end

    this:DeployRangeStoryByQuest(110303520, 20343, {x = -1995.221, y = 280.373, z = 4039.385}, 200, 210)
end

function Quest3035:OnSubFinish303521(arg1)
    print("OnSubFinish303521")
    this:UnCallDelayByQuest("303521")
    this:ClearNarratorTask()
end

function Quest3035:OnSubFailed303521(arg1)
    print("OnSubFailed303521")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303522(arg1)
    print("OnSubStart303522")
    this:NpcCreateWithNpcTriggerAndBlackscreen(303522, 0, 60, 0.5, npcs.Npc1051.id)
    this:DeployRangeStoryByQuest(110303520, 20343, {x = -1995.221, y = 280.373, z = 4039.385}, 200, 210)
end

function Quest3035:OnSubFinish303522(arg1)
    print("OnSubFinish303522")
    this:NpcDestroyImmediately(20343, npcs.Npc1051.alias)
    this:CancelRangeStoryByQuest(110303520)
end

function Quest3035:OnSubStart303524(arg1)
    print("OnSubStart303524")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303524, 20, true)
    actorMgr:CreateActorWithPos("Q303524_TriggerIn", "Actor/Gadget/Q303524_TriggerIn", 70900002, 0, points._Q303524_TriggerInPoint_.pos, points._Q303524_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    this:CreateLocalGadget(70290894, "303520", {x = -1764.622, y = 23.536, z = 5691.334}, {x = 0, y = 15.767, z = 0}, 20343, nil, nil, true, 0, true)
end

function Quest3035:OnSubFinish303524(arg1)
    print("OnSubFinish303524")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303524_TriggerIn", 3035)
    this:RemoveLocalGadget(70290894, "303520")
end

function Quest3035:OnSubStart303523(arg1)
    print("OnSubStart303523")
    actorMgr:CreateActorWithPos("Q303523_TriggerIn", "Actor/Gadget/Q303523_TriggerIn", 70900002, 0, points._Q303523_TriggerInPoint_.pos, points._Q303523_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303523(arg1)
    print("OnSubFinish303523")
end

function Quest3035:OnSubStart303532(arg1)
    print("OnSubStart303532")
    actorMgr:CreateActorWithPos("Q303532_TriggerIn", "Actor/Gadget/Q303532_TriggerIn", 70900002, 0, points._Q303532_TriggerInPoint_.pos, points._Q303532_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303532(arg1)
    print("OnSubFinish303532")
    this:ActorDestroy("Q303532_TriggerIn", 3035)
end

function Quest3035:OnSubFailed303532(arg1)
    print("OnSubFailed303532")
    this:RecycleAllRes()
    if sceneData.currSceneID == 20343 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Q303524, nil, nil, nil)
    end
end

function Quest3035:OnSubStart303525(arg1)
    print("OnSubStart303525")
    this:CreateQuestNpc(arg1, npcs.Npc16565.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q303525_TriggerIn", "Actor/Gadget/Q303525_TriggerIn", 70900002, 0, points._Q303525_TriggerInPoint_.pos, points._Q303525_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303525(arg1)
    print("OnSubFinish303525")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303525_TriggerIn", 3035)
end

function Quest3035:OnSubFailed303525(arg1)
    print("OnSubFailed303525")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303526(arg1)
    print("OnSubStart303526")
end

function Quest3035:OnSubFinish303526(arg1)
    print("OnSubFinish303526")
end

function Quest3035:OnSubStart303527(arg1)
    print("OnSubStart303527")
    this:CreateQuestNpc(arg1, npcs.Npc20846.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q303527_TriggerIn", "Actor/Gadget/Q303527_TriggerIn", 70900002, 0, points._Q303527_TriggerInPoint_.pos, points._Q303527_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    actorMgr:CreateActorWithPos("Q303527_TriggerIn02", "Actor/Gadget/Q303527_TriggerIn02", 70900002, 0, points._Q303527_TriggerIn02Point_.pos, points._Q303527_TriggerIn02Point_.rot, true, false, 20343, nil, 0, 3035)
    actorMgr:CreateActorWithPos("Q303527_TriggerIn03", "Actor/Gadget/Q303527_TriggerIn03", 70900002, 0, points._Q303527_TriggerIn03Point_.pos, points._Q303527_TriggerIn03Point_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303527(arg1)
    print("OnSubFinish303527")
    this:ActorDestroy("Q303527_TriggerIn", 3035)
    this:ActorDestroy("Q303527_TriggerIn02", 3035)
    this:ActorDestroy("Q303527_TriggerIn03", 3035)
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_Q303527_02, nil)
end

function Quest3035:OnSubStart303534(arg1)
    print("OnSubStart303534")
end

function Quest3035:OnSubFinish303534(arg1)
    print("OnSubFinish303534")
end

function Quest3035:OnSubFailed303534(arg1)
    print("OnSubFailed303534")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303533(arg1)
    print("OnSubStart303533")
    actorMgr:CreateActorWithPos("Q303533_TriggerIn", "Actor/Gadget/Q303533_TriggerIn", 70900002, 0, points._Q303533_TriggerInPoint_.pos, points._Q303533_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303533(arg1)
    print("OnSubFinish303533")
    this:NpcDestroyImmediately(20343, npcs.Npc20846.alias)
    this:ActorDestroy("Q303533_TriggerIn", 3035)
end

function Quest3035:OnSubFailed303533(arg1)
    print("OnSubFailed303533")
    this:RecycleAllRes()
end

function Quest3035:OnSubStart303528(arg1)
    print("OnSubStart303528")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16565.id, 0, 303528, 30, true)
    actorMgr:CreateActorWithPos("Q303528_TriggerIn", "Actor/Gadget/Q303528_TriggerIn", 70900002, 0, points._Q303528_TriggerInPoint_.pos, points._Q303528_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303528(arg1)
    print("OnSubFinish303528")
    this:NpcDestroyImmediately(20343, npcs.Npc16565.alias)
    this:ActorDestroy("Q303528_TriggerIn", 3035)
end

function Quest3035:OnSubStart303529(arg1)
    print("OnSubStart303529")
    actorMgr:CreateActorWithPos("Q303529_TriggerIn", "Actor/Gadget/Q303529_TriggerIn", 70900002, 0, points._Q303529_TriggerInPoint_.pos, points._Q303529_TriggerInPoint_.rot, true, false, 20343, nil, 0, 3035)
    actorMgr:CreateActorWithPos("Q303529_TriggerIn02", "Actor/Gadget/Q303529_TriggerIn02", 70900002, 0, points._Q303529_TriggerIn02Point_.pos, points._Q303529_TriggerIn02Point_.rot, true, false, 20343, nil, 0, 3035)
end

function Quest3035:OnSubFinish303529(arg1)
    print("OnSubFinish303529")
    this:ActorDestroy("Q303529_TriggerIn", 3035)
end

function Quest3035:OnSubFailed303529(arg1)
    print("OnSubFailed303529")
    this:RecycleAllRes()
end

return Quest3035
