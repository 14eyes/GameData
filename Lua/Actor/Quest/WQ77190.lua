require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77190 = class("Quest77190", QuestActorProxy)
Quest77190.defaultAlias = "Quest77190"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77190:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77190:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7719001"] = self.OnSubStart7719001}
end

function Quest77190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7719001"] = self.OnSubFinish7719001}
end

function Quest77190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77190:Start()
    print("Start")
end

function Quest77190:OnDestroy()
    print("OnDestroy")
end

function Quest77190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77190:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77190:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest77190:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77190:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest77190:OnSubStart7719001(arg1)
    print("OnSubStart7719001")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7719001, 0, 100, "Q77190Trigger", 80, npcs.Npc17114.id)
end

function Quest77190:OnSubFinish7719001(arg1)
    print("OnSubFinish7719001")
    this:NpcDestroyImmediately(3, npcs.Npc17114.alias)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q77190Trigger")
end

return Quest77190
