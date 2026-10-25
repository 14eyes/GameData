require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77189 = class("Quest77189", QuestActorProxy)
Quest77189.defaultAlias = "Quest77189"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77189:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77189:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7718901"] = self.OnSubStart7718901}
end

function Quest77189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7718901"] = self.OnSubFinish7718901}
end

function Quest77189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77189:Start()
    print("Start")
end

function Quest77189:OnDestroy()
    print("OnDestroy")
end

function Quest77189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77189:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77189:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77189:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest77189:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77189:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest77189:OnSubStart7718901(arg1)
    print("OnSubStart7718901")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7718901, 0, 60, "Q77189Trigger", 50, npcs.Npc17112.id)
end

function Quest77189:OnSubFinish7718901(arg1)
    print("OnSubFinish7718901")
    this:NpcDestroyImmediately(3, npcs.Npc17112.alias)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q77189Trigger")
end

return Quest77189
