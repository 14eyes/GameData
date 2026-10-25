require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77246 = class("Quest77246", QuestActorProxy)
Quest77246.defaultAlias = "Quest77246"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77246:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77246:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7724601"] = self.OnSubStart7724601}
end

function Quest77246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7724601"] = self.OnSubFinish7724601}
end

function Quest77246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77246:Start()
    print("Start")
end

function Quest77246:OnDestroy()
    print("OnDestroy")
end

function Quest77246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77246:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77246:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77246:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest77246:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest77246:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77246:OnSubStart7724601(arg1)
    print("OnSubStart7724601")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7724601, 0, 60, "Q77246Trigger", 50, npcs.Npc22855.id)
end

function Quest77246:OnSubFinish7724601(arg1)
    print("OnSubFinish7724601")
    this:NpcDestroyImmediately(3, npcs.Npc22855.alias)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q77246Trigger")
end

return Quest77246
