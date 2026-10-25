require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73700 = class("Quest73700", QuestActorProxy)
Quest73700.defaultAlias = "Quest73700"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73700:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73700:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370001"] = self.OnSubStart7370001,
        ["7370002"] = self.OnSubStart7370002,
        ["7370003"] = self.OnSubStart7370003,
        ["7370004"] = self.OnSubStart7370004,
        ["7370005"] = self.OnSubStart7370005,
        ["7370006"] = self.OnSubStart7370006
    }
end

function Quest73700:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370001"] = self.OnSubFinish7370001,
        ["7370002"] = self.OnSubFinish7370002,
        ["7370003"] = self.OnSubFinish7370003,
        ["7370004"] = self.OnSubFinish7370004,
        ["7370005"] = self.OnSubFinish7370005,
        ["7370006"] = self.OnSubFinish7370006
    }
end

function Quest73700:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73700:Start()
    print("Start")
end

function Quest73700:OnDestroy()
    print("OnDestroy")
end

function Quest73700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73700:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73700:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73700:OnSubStart7370001(arg1)
    print("OnSubStart7370001")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73700:OnSubFinish7370001(arg1)
    print("OnSubFinish7370001")
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73700:OnSubStart7370002(arg1)
    print("OnSubStart7370002")
end

function Quest73700:OnSubFinish7370002(arg1)
    print("OnSubFinish7370002")
end

function Quest73700:OnSubStart7370003(arg1)
    print("OnSubStart7370003")
end

function Quest73700:OnSubFinish7370003(arg1)
    print("OnSubFinish7370003")
end

function Quest73700:OnSubStart7370004(arg1)
    print("OnSubStart7370004")
end

function Quest73700:OnSubFinish7370004(arg1)
    print("OnSubFinish7370004")
end

function Quest73700:OnSubStart7370005(arg1)
    print("OnSubStart7370005")
end

function Quest73700:OnSubFinish7370005(arg1)
    print("OnSubFinish7370005")
end

function Quest73700:OnSubStart7370006(arg1)
    print("OnSubStart7370006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7370006, 1, 30, 1)
end

function Quest73700:OnSubFinish7370006(arg1)
    print("OnSubFinish7370006")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73700
