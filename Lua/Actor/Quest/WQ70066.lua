require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70066 = class("Quest70066", QuestActorProxy)
Quest70066.defaultAlias = "Quest70066"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70066:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70066:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7006601"] = self.OnSubStart7006601}
end

function Quest70066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7006601"] = self.OnSubFinish7006601}
end

function Quest70066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70066:Start()
    print("Start")
end

function Quest70066:OnDestroy()
    print("OnDestroy")
end

function Quest70066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70066:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70066:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest70066:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70066:OnSubStart7006601(arg1)
    print("OnSubStart7006601")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1624.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1624.alias, 70066):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest70066:OnSubFinish7006601(arg1)
    print("OnSubFinish7006601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1624.alias)
end

return Quest70066
