require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75256 = class("Quest75256", QuestActorProxy)
Quest75256.defaultAlias = "Quest75256"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75256:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75256:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7525601"] = self.OnSubStart7525601}
end

function Quest75256:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7525601"] = self.OnSubFinish7525601}
end

function Quest75256:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75256:Start()
    print("Start")
end

function Quest75256:OnDestroy()
    print("OnDestroy")
end

function Quest75256:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75256:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75256:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75256:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75256:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75256:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75256:OnSubStart7525601(arg1)
    print("OnSubStart7525601")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6512.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6512.alias, 75256):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75256:OnSubFinish7525601(arg1)
    print("OnSubFinish7525601")
    this:NpcDestroyImmediately(3, npcs.Npc6512.alias)
end

return Quest75256
