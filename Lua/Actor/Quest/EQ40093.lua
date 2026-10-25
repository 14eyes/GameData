require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40093 = class("Quest40093", QuestActorProxy)
Quest40093.defaultAlias = "Quest40093"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40093:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40093:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009301"] = self.OnSubStart4009301,
        ["4009302"] = self.OnSubStart4009302,
        ["4009303"] = self.OnSubStart4009303,
        ["4009304"] = self.OnSubStart4009304,
        ["4009305"] = self.OnSubStart4009305,
        ["4009306"] = self.OnSubStart4009306,
        ["4009307"] = self.OnSubStart4009307,
        ["4009308"] = self.OnSubStart4009308,
        ["4009309"] = self.OnSubStart4009309,
        ["4009310"] = self.OnSubStart4009310,
        ["4009311"] = self.OnSubStart4009311
    }
end

function Quest40093:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009301"] = self.OnSubFinish4009301,
        ["4009302"] = self.OnSubFinish4009302,
        ["4009303"] = self.OnSubFinish4009303,
        ["4009304"] = self.OnSubFinish4009304,
        ["4009305"] = self.OnSubFinish4009305,
        ["4009306"] = self.OnSubFinish4009306,
        ["4009307"] = self.OnSubFinish4009307,
        ["4009308"] = self.OnSubFinish4009308,
        ["4009309"] = self.OnSubFinish4009309,
        ["4009310"] = self.OnSubFinish4009310,
        ["4009311"] = self.OnSubFinish4009311
    }
end

function Quest40093:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40093:Start()
    print("Start")
end

function Quest40093:OnDestroy()
    print("OnDestroy")
end

function Quest40093:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40093:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40093:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10285Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10286Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10284Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13097Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40093Trigger", 3, false)
    actorMgr:DestroyEntityActor("4009302", 3, false)
    actorMgr:DestroyEntityActor("Q4009303N1015Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009305N1045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009306N10285Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009307N2093Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009308N1016Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009309N1021Trigger", 3, false)
    actorMgr:DestroyEntityActor("4009310", 3, false)
    actorMgr:DestroyEntityActor("Q4009311N1016Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009304Trigger", 3, false)
    actorMgr:DestroyEntityActor("40093041Trigger", 3, false)
end

function Quest40093:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest40093:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest40093:OnSubStart4009301(arg1)
    print("OnSubStart4009301")
end

function Quest40093:OnSubFinish4009301(arg1)
    print("OnSubFinish4009301")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest40093:OnSubStart4009302(arg1)
    print("OnSubStart4009302")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("4009302", 4009302, 1015, 1, 10)
    end)
end

function Quest40093:OnSubFinish4009302(arg1)
    print("OnSubFinish4009302")
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
end

function Quest40093:OnSubStart4009303(arg1)
    print("OnSubStart4009303")
    this:NpcCreateWithTriggerBlack(npcs.Npc1015Data.id, 4009303, 1)
end

function Quest40093:OnSubFinish4009303(arg1)
    print("OnSubFinish4009303")
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
end

function Quest40093:OnSubStart4009304(arg1)
    print("OnSubStart4009304")
    actorMgr:CreateActorWithPos("Q40093Trigger", "Actor/Gadget/Q40093Trigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009304_T4009304_N10000005").pos, sceneData:GetDummyPoint(3, "Q4009304_T4009304_N10000005").rot, true, false, 3)
end

function Quest40093:OnSubFinish4009304(arg1)
    print("OnSubFinish4009304")
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13097Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorMgr:DestroyEntityActor("40093041Trigger", 3, false)
    end)
end

function Quest40093:OnSubStart4009305(arg1)
    print("OnSubStart4009305")
    this:NpcCreateWithTriggerBlack(npcs.Npc1045Data.id, 4009305, 1)
    this:ClearNarratorTask()
end

function Quest40093:OnSubFinish4009305(arg1)
    print("OnSubFinish4009305")
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
end

function Quest40093:OnSubStart4009306(arg1)
    print("OnSubStart4009306")
    this:NpcCreateWithTriggerBlack(npcs.Npc10285Data.id, 4009306, 1)
end

function Quest40093:OnSubFinish4009306(arg1)
    print("OnSubFinish4009306")
end

function Quest40093:OnSubStart4009307(arg1)
    print("OnSubStart4009307")
    this:CreateQuestNpc(arg1, npcs.Npc10285Data.id, 1)
    this:NpcCreateWithTrigger(npcs.Npc2093Data.id, 4009307, 2)
    this:GetQuestNpcActor(npcs.Npc10285Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2093Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40093:OnSubFinish4009307(arg1)
    print("OnSubFinish4009307")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId3)
    end)
end

function Quest40093:OnSubStart4009308(arg1)
    print("OnSubStart4009308")
    this:CreateQuestNpc(arg1, npcs.Npc12966Data.id, 1)
    this:NpcCreateWithTrigger(1016, 4009308, 2)
    this:GetQuestNpcActor(npcs.Npc10285Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2093Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40093:OnSubFinish4009308(arg1)
    print("OnSubFinish4009308")
    this:SafeDestroyQuestNpc(npcs.Npc10285Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
end

function Quest40093:OnSubStart4009309(arg1)
    print("OnSubStart4009309")
    this:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 1)
    this:NpcCreateWithTrigger(npcs.Npc1021Data.id, 4009309, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1046Data.id, 3)
end

function Quest40093:OnSubFinish4009309(arg1)
    print("OnSubFinish4009309")
    this:GetQuestNpcActor(npcs.Npc1042Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1046Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40093:OnSubStart4009310(arg1)
    print("OnSubStart4009310")
    this:CreateQuestNpc(arg1, npcs.Npc10284Data.id, 3)
    this:CreateQuestNpcWithTrigger("4009310", 4009310, npcs.Npc10286Data.id, 2, 8)
end

function Quest40093:OnSubFinish4009310(arg1)
    print("OnSubFinish4009310")
    this:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc10286Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc10284Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40093:OnSubStart4009311(arg1)
    print("OnSubStart4009311")
    this:CreateQuestNpcWithTriggerBlack("Q4009311N1016Trigger", 4009311, npcs.Npc1016Data.id, 1, 40, 2)
end

function Quest40093:OnSubFinish4009311(arg1)
    print("OnSubFinish4009311")
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10286Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10284Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
end

return Quest40093
