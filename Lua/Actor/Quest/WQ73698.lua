require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73698 = class("Quest73698", QuestActorProxy)
Quest73698.defaultAlias = "Quest73698"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73698:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73698:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7369801"] = self.OnSubStart7369801,
        ["7369802"] = self.OnSubStart7369802,
        ["7369803"] = self.OnSubStart7369803,
        ["7369804"] = self.OnSubStart7369804,
        ["7369805"] = self.OnSubStart7369805,
        ["7369806"] = self.OnSubStart7369806
    }
end

function Quest73698:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7369801"] = self.OnSubFinish7369801,
        ["7369802"] = self.OnSubFinish7369802,
        ["7369803"] = self.OnSubFinish7369803,
        ["7369804"] = self.OnSubFinish7369804,
        ["7369805"] = self.OnSubFinish7369805,
        ["7369806"] = self.OnSubFinish7369806
    }
end

function Quest73698:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73698:Start()
    print("Start")
end

function Quest73698:OnDestroy()
    print("OnDestroy")
end

function Quest73698:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73698:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73698:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73698:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73698:OnSubStart7369801(arg1)
    print("OnSubStart7369801")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73698:OnSubFinish7369801(arg1)
    print("OnSubFinish7369801")
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73698:OnSubStart7369802(arg1)
    print("OnSubStart7369802")
end

function Quest73698:OnSubFinish7369802(arg1)
    print("OnSubFinish7369802")
end

function Quest73698:OnSubStart7369803(arg1)
    print("OnSubStart7369803")
end

function Quest73698:OnSubFinish7369803(arg1)
    print("OnSubFinish7369803")
end

function Quest73698:OnSubStart7369804(arg1)
    print("OnSubStart7369804")
end

function Quest73698:OnSubFinish7369804(arg1)
    print("OnSubFinish7369804")
end

function Quest73698:OnSubStart7369805(arg1)
    print("OnSubStart7369805")
end

function Quest73698:OnSubFinish7369805(arg1)
    print("OnSubFinish7369805")
end

function Quest73698:OnSubStart7369806(arg1)
    print("OnSubStart7369806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7369806, 1, 15, 1)
end

function Quest73698:OnSubFinish7369806(arg1)
    print("OnSubFinish7369806")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73698
