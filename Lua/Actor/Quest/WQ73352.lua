require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73352 = class("Quest73352", QuestActorProxy)
Quest73352.defaultAlias = "Quest73352"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73352:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73352:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7335201"] = self.OnSubStart7335201}
end

function Quest73352:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7335201"] = self.OnSubFinish7335201}
end

function Quest73352:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73352:Start()
    print("Start")
end

function Quest73352:OnDestroy()
    print("OnDestroy")
end

function Quest73352:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73352:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73352:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30659.alias, 3)
end

function Quest73352:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73352:OnSubStart7335201(arg1)
    print("OnSubStart7335201")
    this:CreateQuestNpc(arg1, npcs.Npc30659.id, 0, false, 0)
end

function Quest73352:OnSubFinish7335201(arg1)
    print("OnSubFinish7335201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30659.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1938, nil)
    end)
end

return Quest73352
