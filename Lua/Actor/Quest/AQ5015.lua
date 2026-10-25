require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5015 = class("Quest5015", QuestActorProxy)
Quest5015.defaultAlias = "Quest5015"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501501"] = self.OnSubStart501501,
        ["501502"] = self.OnSubStart501502,
        ["501503"] = self.OnSubStart501503,
        ["501504"] = self.OnSubStart501504,
        ["501505"] = self.OnSubStart501505,
        ["501506"] = self.OnSubStart501506,
        ["501507"] = self.OnSubStart501507,
        ["501508"] = self.OnSubStart501508,
        ["501509"] = self.OnSubStart501509,
        ["501510"] = self.OnSubStart501510
    }
end

function Quest5015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501501"] = self.OnSubFinish501501,
        ["501502"] = self.OnSubFinish501502,
        ["501503"] = self.OnSubFinish501503,
        ["501504"] = self.OnSubFinish501504,
        ["501505"] = self.OnSubFinish501505,
        ["501506"] = self.OnSubFinish501506,
        ["501507"] = self.OnSubFinish501507,
        ["501508"] = self.OnSubFinish501508,
        ["501509"] = self.OnSubFinish501509,
        ["501510"] = self.OnSubFinish501510
    }
end

function Quest5015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5015:Start()
    print("Start")
end

function Quest5015:OnDestroy()
    print("OnDestroy")
end

function Quest5015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 50150901 then
        actorUtils.FinishQuestID(false, 501510)
    end
end

function Quest5015:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5015:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5015:OnSubStart501501(arg1)
    print("OnSubStart501501")
end

function Quest5015:OnSubFinish501501(arg1)
    print("OnSubFinish501501")
    this:QuestNarratorTask(datas.NarratorWithId501501, nil)
end

function Quest5015:OnSubStart501502(arg1)
    print("OnSubStart501502")
    this:CreateQuestNpc(arg1, npcs.Npc6004.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14524.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q501502Trigger", "Actor/Gadget/Q501502Trigger", 70900002, 0, points._Q501502TriggerPoint_.pos, points._Q501502TriggerPoint_.rot, true, false, 3)
end

function Quest5015:OnSubFinish501502(arg1)
    print("OnSubFinish501502")
end

function Quest5015:OnSubStart501503(arg1)
    print("OnSubStart501503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501503, 0, 20, 1, npcs.Npc6004.id)
end

function Quest5015:OnSubFinish501503(arg1)
    print("OnSubFinish501503")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6004.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14524.alias, 3)
    this:ClearNarratorTask()
end

function Quest5015:OnSubStart501504(arg1)
    print("OnSubStart501504")
    actorMgr:CreateActorWithPos("Q501504Trigger", "Actor/Gadget/Q501504Trigger", 70900002, 0, points._Q501504TriggerPoint_.pos, points._Q501504TriggerPoint_.rot, true, false, 3)
end

function Quest5015:OnSubFinish501504(arg1)
    print("OnSubFinish501504")
end

function Quest5015:OnSubStart501505(arg1)
    print("OnSubStart501505")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 15, 501505)
end

function Quest5015:OnSubFinish501505(arg1)
    print("OnSubFinish501505")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest5015:OnSubStart501506(arg1)
    print("OnSubStart501506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501506, 0, 8, 1, npcs.Npc1088.id)
end

function Quest5015:OnSubFinish501506(arg1)
    print("OnSubFinish501506")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5015:OnSubStart501507(arg1)
    print("OnSubStart501507")
end

function Quest5015:OnSubFinish501507(arg1)
    print("OnSubFinish501507")
    this:QuestNarratorTask(datas.NarratorWithId501502, nil)
end

function Quest5015:OnSubStart501508(arg1)
    print("OnSubStart501508")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 8, 501508)
end

function Quest5015:OnSubFinish501508(arg1)
    print("OnSubFinish501508")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:ClearNarratorTask()
end

function Quest5015:OnSubStart501509(arg1)
    print("OnSubStart501509")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501509, 0, 15, 0, npcs.Npc1096.id)
end

function Quest5015:OnSubFinish501509(arg1)
    print("OnSubFinish501509")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest5015:OnSubStart501510(arg1)
    print("OnSubStart501510")
end

function Quest5015:OnSubFinish501510(arg1)
    print("OnSubFinish501510")
end

return Quest5015
