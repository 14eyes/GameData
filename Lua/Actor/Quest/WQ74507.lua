require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74507 = class("Quest74507", QuestActorProxy)
Quest74507.defaultAlias = "Quest74507"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74507:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74507:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7450701"] = self.OnSubStart7450701,
        ["7450702"] = self.OnSubStart7450702,
        ["7450703"] = self.OnSubStart7450703,
        ["7450704"] = self.OnSubStart7450704
    }
end

function Quest74507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7450701"] = self.OnSubFinish7450701,
        ["7450702"] = self.OnSubFinish7450702,
        ["7450703"] = self.OnSubFinish7450703,
        ["7450704"] = self.OnSubFinish7450704
    }
end

function Quest74507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74507:Start()
    print("Start")
end

function Quest74507:OnDestroy()
    print("OnDestroy")
end

function Quest74507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30422Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30429Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30430Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30428Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74507Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q74507Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q7450701N30429Trigger", 3, false)
end

function Quest74507:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74507:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74507:OnSubStart7450701(arg1)
    print("OnSubStart7450701")
    this:CreateQuestNpc(arg1, npcs.Npc30419Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30422Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30429Data.id, 7450701, 0, 25, 1)
end

function Quest74507:OnSubFinish7450701(arg1)
    print("OnSubFinish7450701")
    this:SafeDestroyQuestNpc(npcs.Npc30429Data.alias, 3)
end

function Quest74507:OnSubStart7450702(arg1)
    print("OnSubStart7450702")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30429Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30430Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30428Data.id, 0)
    actorMgr:CreateActorWithPos("Q74507Trigger", "Actor/Gadget/Q74507Trigger", 70900002, 0, {x = 3581.162, y = 446.167, z = 4438.195}, {x = 0.0, y = 334.831, z = 0.0}, true, false, 3)
end

function Quest74507:OnSubFinish7450702(arg1)
    print("OnSubFinish7450702")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FungusV3DungeonEntryPage", 0)
    end)
end

function Quest74507:OnSubStart7450703(arg1)
    print("OnSubStart7450703")
end

function Quest74507:OnSubFinish7450703(arg1)
    print("OnSubFinish7450703")
end

function Quest74507:OnSubStart7450704(arg1)
    print("OnSubStart7450704")
    actorMgr:CreateActorWithPos("Q74507Trigger1", "Actor/Gadget/Q74507Trigger1", 70900002, 0, {x = 3586.493, y = 446.167, z = 4444.492}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74507:OnSubFinish7450704(arg1)
    print("OnSubFinish7450704")
    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30422Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30429Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30430Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30428Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FungusV3DungeonEntryPage", 1)
    end)
end

return Quest74507
