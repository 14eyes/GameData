require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73699 = class("Quest73699", QuestActorProxy)
Quest73699.defaultAlias = "Quest73699"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73699:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73699:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7369901"] = self.OnSubStart7369901,
        ["7369902"] = self.OnSubStart7369902,
        ["7369903"] = self.OnSubStart7369903,
        ["7369904"] = self.OnSubStart7369904,
        ["7369905"] = self.OnSubStart7369905,
        ["7369906"] = self.OnSubStart7369906
    }
end

function Quest73699:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7369901"] = self.OnSubFinish7369901,
        ["7369902"] = self.OnSubFinish7369902,
        ["7369903"] = self.OnSubFinish7369903,
        ["7369904"] = self.OnSubFinish7369904,
        ["7369905"] = self.OnSubFinish7369905,
        ["7369906"] = self.OnSubFinish7369906
    }
end

function Quest73699:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73699:Start()
    print("Start")
end

function Quest73699:OnDestroy()
    print("OnDestroy")
end

function Quest73699:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73699:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73699:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73699:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73699:OnSubStart7369901(arg1)
    print("OnSubStart7369901")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73699:OnSubFinish7369901(arg1)
    print("OnSubFinish7369901")
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73699:OnSubStart7369902(arg1)
    print("OnSubStart7369902")
end

function Quest73699:OnSubFinish7369902(arg1)
    print("OnSubFinish7369902")
end

function Quest73699:OnSubStart7369903(arg1)
    print("OnSubStart7369903")
end

function Quest73699:OnSubFinish7369903(arg1)
    print("OnSubFinish7369903")
end

function Quest73699:OnSubStart7369904(arg1)
    print("OnSubStart7369904")
end

function Quest73699:OnSubFinish7369904(arg1)
    print("OnSubFinish7369904")
end

function Quest73699:OnSubStart7369905(arg1)
    print("OnSubStart7369905")
end

function Quest73699:OnSubFinish7369905(arg1)
    print("OnSubFinish7369905")
end

function Quest73699:OnSubStart7369906(arg1)
    print("OnSubStart7369906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7369906, 1, 20, 1)
end

function Quest73699:OnSubFinish7369906(arg1)
    print("OnSubFinish7369906")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73699
