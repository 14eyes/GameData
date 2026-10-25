require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73702 = class("Quest73702", QuestActorProxy)
Quest73702.defaultAlias = "Quest73702"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73702:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73702:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370201"] = self.OnSubStart7370201,
        ["7370202"] = self.OnSubStart7370202,
        ["7370203"] = self.OnSubStart7370203,
        ["7370204"] = self.OnSubStart7370204,
        ["7370205"] = self.OnSubStart7370205,
        ["7370206"] = self.OnSubStart7370206
    }
end

function Quest73702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370201"] = self.OnSubFinish7370201,
        ["7370202"] = self.OnSubFinish7370202,
        ["7370203"] = self.OnSubFinish7370203,
        ["7370204"] = self.OnSubFinish7370204,
        ["7370205"] = self.OnSubFinish7370205,
        ["7370206"] = self.OnSubFinish7370206
    }
end

function Quest73702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73702:Start()
    print("Start")
end

function Quest73702:OnDestroy()
    print("OnDestroy")
end

function Quest73702:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73702:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4284Data.alias, 0, true)
end

function Quest73702:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73702:OnSubStart7370201(arg1)
    print("OnSubStart7370201")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73702:OnSubFinish7370201(arg1)
    print("OnSubFinish7370201")
    this:SafeDestroyQuestNpc(npcs.Npc4284Data.alias, 3)
end

function Quest73702:OnSubStart7370202(arg1)
    print("OnSubStart7370202")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc4284Data.alias, 1, true)
    end)
end

function Quest73702:OnSubFinish7370202(arg1)
    print("OnSubFinish7370202")
end

function Quest73702:OnSubStart7370203(arg1)
    print("OnSubStart7370203")
end

function Quest73702:OnSubFinish7370203(arg1)
    print("OnSubFinish7370203")
end

function Quest73702:OnSubStart7370204(arg1)
    print("OnSubStart7370204")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc4284Data.alias, 1, true)
    end)
end

function Quest73702:OnSubFinish7370204(arg1)
    print("OnSubFinish7370204")
end

function Quest73702:OnSubStart7370205(arg1)
    print("OnSubStart7370205")
end

function Quest73702:OnSubFinish7370205(arg1)
    print("OnSubFinish7370205")
end

function Quest73702:OnSubStart7370206(arg1)
    print("OnSubStart7370206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7370206, 1, 15, 1)
    this:NotifyTo(npcs.Npc4284Data.alias, 1, true)
end

function Quest73702:OnSubFinish7370206(arg1)
    print("OnSubFinish7370206")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
        this:LightNotifyTo(npcs.Npc4284Data.alias, 0, true)
    end)
end

return Quest73702
