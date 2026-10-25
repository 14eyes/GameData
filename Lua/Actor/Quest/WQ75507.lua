require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75507 = class("Quest75507", QuestActorProxy)
Quest75507.defaultAlias = "Quest75507"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75507:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75507:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550701"] = self.OnSubStart7550701}
end

function Quest75507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550701"] = self.OnSubFinish7550701}
end

function Quest75507:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75507:Start()
    print("Start")
end

function Quest75507:OnDestroy()
    print("OnDestroy")
end

function Quest75507:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75507:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75507:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30718.alias, 3)
end

function Quest75507:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75507:OnSubStart7550701(arg1)
    print("OnSubStart7550701")
    this:CreateQuestNpc(arg1, npcs.Npc30718.id, 0, false, 0)
end

function Quest75507:OnSubFinish7550701(arg1)
    print("OnSubFinish7550701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30718.alias)
end

return Quest75507
