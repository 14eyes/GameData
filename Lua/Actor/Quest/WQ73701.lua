require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73701 = class("Quest73701", QuestActorProxy)
Quest73701.defaultAlias = "Quest73701"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73701:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73701:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370101"] = self.OnSubStart7370101,
        ["7370102"] = self.OnSubStart7370102,
        ["7370103"] = self.OnSubStart7370103,
        ["7370104"] = self.OnSubStart7370104,
        ["7370105"] = self.OnSubStart7370105,
        ["7370106"] = self.OnSubStart7370106
    }
end

function Quest73701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370101"] = self.OnSubFinish7370101,
        ["7370102"] = self.OnSubFinish7370102,
        ["7370103"] = self.OnSubFinish7370103,
        ["7370104"] = self.OnSubFinish7370104,
        ["7370105"] = self.OnSubFinish7370105,
        ["7370106"] = self.OnSubFinish7370106
    }
end

function Quest73701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73701:Start()
    print("Start")
end

function Quest73701:OnDestroy()
    print("OnDestroy")
end

function Quest73701:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73701:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73701:OnSubStart7370101(arg1)
    print("OnSubStart7370101")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73701:OnSubFinish7370101(arg1)
    print("OnSubFinish7370101")
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73701:OnSubStart7370102(arg1)
    print("OnSubStart7370102")
end

function Quest73701:OnSubFinish7370102(arg1)
    print("OnSubFinish7370102")
end

function Quest73701:OnSubStart7370103(arg1)
    print("OnSubStart7370103")
end

function Quest73701:OnSubFinish7370103(arg1)
    print("OnSubFinish7370103")
end

function Quest73701:OnSubStart7370104(arg1)
    print("OnSubStart7370104")
end

function Quest73701:OnSubFinish7370104(arg1)
    print("OnSubFinish7370104")
end

function Quest73701:OnSubStart7370105(arg1)
    print("OnSubStart7370105")
end

function Quest73701:OnSubFinish7370105(arg1)
    print("OnSubFinish7370105")
end

function Quest73701:OnSubStart7370106(arg1)
    print("OnSubStart7370106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7370106, 1, 15, 1)
end

function Quest73701:OnSubFinish7370106(arg1)
    print("OnSubFinish7370106")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73701
