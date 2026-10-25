require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73354 = class("Quest73354", QuestActorProxy)
Quest73354.defaultAlias = "Quest73354"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73354:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73354:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7335401"] = self.OnSubStart7335401}
end

function Quest73354:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7335401"] = self.OnSubFinish7335401}
end

function Quest73354:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73354:Start()
    print("Start")
end

function Quest73354:OnDestroy()
    print("OnDestroy")
end

function Quest73354:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73354:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73354:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30658.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30657.alias, 3)
end

function Quest73354:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73354:OnSubStart7335401(arg1)
    print("OnSubStart7335401")
    this:CreateQuestNpc(arg1, npcs.Npc30658.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30657.id, 0, false, 0)
end

function Quest73354:OnSubFinish7335401(arg1)
    print("OnSubFinish7335401")
    this:SafeDestroyQuestNpc(npcs.Npc30658.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30657.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1905, nil)
    end)
end

return Quest73354
