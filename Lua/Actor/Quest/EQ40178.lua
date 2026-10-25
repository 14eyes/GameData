require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40178 = class("Quest40178", QuestActorProxy)
Quest40178.defaultAlias = "Quest40178"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40178:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40178:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017801"] = self.OnSubStart4017801,
        ["4017802"] = self.OnSubStart4017802,
        ["4017803"] = self.OnSubStart4017803,
        ["4017806"] = self.OnSubStart4017806,
        ["4017804"] = self.OnSubStart4017804,
        ["4017805"] = self.OnSubStart4017805,
        ["4017809"] = self.OnSubStart4017809,
        ["4017818"] = self.OnSubStart4017818,
        ["4017812"] = self.OnSubStart4017812,
        ["4017813"] = self.OnSubStart4017813,
        ["4017814"] = self.OnSubStart4017814,
        ["4017815"] = self.OnSubStart4017815,
        ["4017816"] = self.OnSubStart4017816
    }
end

function Quest40178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017801"] = self.OnSubFinish4017801,
        ["4017802"] = self.OnSubFinish4017802,
        ["4017803"] = self.OnSubFinish4017803,
        ["4017806"] = self.OnSubFinish4017806,
        ["4017804"] = self.OnSubFinish4017804,
        ["4017805"] = self.OnSubFinish4017805,
        ["4017809"] = self.OnSubFinish4017809,
        ["4017818"] = self.OnSubFinish4017818,
        ["4017812"] = self.OnSubFinish4017812,
        ["4017813"] = self.OnSubFinish4017813,
        ["4017814"] = self.OnSubFinish4017814,
        ["4017815"] = self.OnSubFinish4017815,
        ["4017816"] = self.OnSubFinish4017816
    }
end

function Quest40178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40178:Start()
    print("Start")
end

function Quest40178:OnDestroy()
    print("OnDestroy")
end

function Quest40178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40178:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc15102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14276.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30721.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30722.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30711.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30712.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1200)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:LightNotifyTo(npcs.Npc6220.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6219.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc15104.alias, 3)
    this:DestroyNpcTrigger("Q4017802N1086Trigger")
    this:DestroyNpcTrigger("Q4017803N1096Trigger")
    this:DestroyNpcTrigger("Q4017804N1088Trigger")
    this:DestroyNpcTrigger("Q4017805N30711Trigger")
    this:DestroyNpcTrigger("Q4017809N1088Trigger")
    this:DestroyNpcTrigger("Q4017812N15104Trigger")
    this:DestroyNpcTrigger("Q4017813N1307Trigger")
    this:DestroyNpcTrigger("Q4017814N1307Trigger")
    this:DestroyNpcTrigger("Q4017815N15104Trigger")
    this:DestroyNpcTrigger("Q4017816N1307Trigger")
    this:DestroyNpcTrigger("Q4017806N15103Trigger")
    this:DestroyNpcTrigger("Q4017818N1096Trigger")
end

function Quest40178:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest40178:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40178:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40178:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40178:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40178:OnSubStart4017801(arg1)
    print("OnSubStart4017801")
end

function Quest40178:OnSubFinish4017801(arg1)
    print("OnSubFinish4017801")
end

function Quest40178:OnSubStart4017802(arg1)
    print("OnSubStart4017802")
    this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15102.alias, 40178):DoFreeStyle(15, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 20, 4017802)
    this:CreateQuestNpc(arg1, npcs.Npc14276.id, 0, false, 0)
end

function Quest40178:OnSubFinish4017802(arg1)
    print("OnSubFinish4017802")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest40178:OnSubStart4017803(arg1)
    print("OnSubStart4017803")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTriggerAndBlackscreen(4017803, 0, 10, 0, npcs.Npc1096.id)
        this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40178):DoFreeStyle(15, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14276.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6220.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc14276.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15103.alias, 40178):DisableInteeHeadCtrl(true)
    end)
end

function Quest40178:OnSubFinish4017803(arg1)
    print("OnSubFinish4017803")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14276.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId4017803, nil)
        this:GetQuestNpcActor(npcs.Npc14276.alias, 40178):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40178):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc15103.alias, 40178):DisableInteeHeadCtrl(false)
    end)
end

function Quest40178:OnSubStart4017806(arg1)
    print("OnSubStart4017806")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15102.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15102.alias, 40178):DoFreeStyle(15, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTrigger(npcs.Npc15103.id, 0, 5, 4017806)
        this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:DailyNpcSafeHideSelf(npcs.Npc6220.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DisableInteeHeadCtrl(true)
    end)
end

function Quest40178:OnSubFinish4017806(arg1)
    print("OnSubFinish4017806")
    this:SafeDestroyQuestNpc(npcs.Npc15102.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 3)
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc6220.alias, 0, true)
end

function Quest40178:OnSubStart4017804(arg1)
    print("OnSubStart4017804")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 10, 4017804)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30721.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30722.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DisableInteeHeadCtrl(true)
end

function Quest40178:OnSubFinish4017804(arg1)
    print("OnSubFinish4017804")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30721.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30722.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId4017804, nil)
    end)
end

function Quest40178:OnSubStart4017805(arg1)
    print("OnSubStart4017805")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc30711.id, 0, 5, 4017805)
        this:CreateQuestNpc(arg1, npcs.Npc30712.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DisableInteeHeadCtrl(true)
    end)
end

function Quest40178:OnSubFinish4017805(arg1)
    print("OnSubFinish4017805")
    this:ClearNarratorTask()
end

function Quest40178:OnSubStart4017809(arg1)
    print("OnSubStart4017809")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017809, 0, 10, 0, npcs.Npc1088.id)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DisableInteeHeadCtrl(true)
end

function Quest40178:OnSubFinish4017809(arg1)
    print("OnSubFinish4017809")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30721.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30722.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30711.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30712.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40178):DisableInteeHeadCtrl(false)
end

function Quest40178:OnSubStart4017818(arg1)
    print("OnSubStart4017818")
    this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 10, 4017818)
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6219.alias, true, 1)
end

function Quest40178:OnSubFinish4017818(arg1)
    print("OnSubFinish4017818")
    this:NpcDestroyImmediately(3, npcs.Npc1096.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1086.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4017812, nil, nil, nil)
    this:LightNotifyTo(npcs.Npc6219.alias, 0, true)
end

function Quest40178:OnSubStart4017812(arg1)
    print("OnSubStart4017812")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc15104.id, 0, 10, 4017812)
    end)
end

function Quest40178:OnSubFinish4017812(arg1)
    print("OnSubFinish4017812")
    this:SafeDestroyQuestNpc(npcs.Npc15104.alias, 3)
end

function Quest40178:OnSubStart4017813(arg1)
    print("OnSubStart4017813")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017813, 0, 10, 0, npcs.Npc1307.id)
end

function Quest40178:OnSubFinish4017813(arg1)
    print("OnSubFinish4017813")
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
end

function Quest40178:OnSubStart4017814(arg1)
    print("OnSubStart4017814")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017814, 0, 10, 0, npcs.Npc1307.id)
end

function Quest40178:OnSubFinish4017814(arg1)
    print("OnSubFinish4017814")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId4017814, nil)
    end)
end

function Quest40178:OnSubStart4017815(arg1)
    print("OnSubStart4017815")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTrigger(npcs.Npc15104.id, 0, 8, 4017815)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40178):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(true)
    end)
end

function Quest40178:OnSubFinish4017815(arg1)
    print("OnSubFinish4017815")
    this:SafeDestroyQuestNpc(npcs.Npc15104.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 40178):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DisableInteeHeadCtrl(false)
    this:ClearNarratorTask()
end

function Quest40178:OnSubStart4017816(arg1)
    print("OnSubStart4017816")
    this:NpcCreateWithNpcTrigger(npcs.Npc1307.id, 0, 10, 4017816)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40178):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40178):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40178:OnSubFinish4017816(arg1)
    print("OnSubFinish4017816")
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

return Quest40178
