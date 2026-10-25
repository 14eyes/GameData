require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75096 = class("Quest75096", QuestActorProxy)
Quest75096.defaultAlias = "Quest75096"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75096:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75096:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7509601"] = self.OnSubStart7509601}
end

function Quest75096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7509601"] = self.OnSubFinish7509601}
end

function Quest75096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75096:Start()
    print("Start")
end

function Quest75096:OnDestroy()
    print("OnDestroy")
end

function Quest75096:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75096:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75096:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75096:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75096:OnSubStart7509601(arg1)
    print("OnSubStart7509601")
    this:CreateQuestNpc(arg1, npcs.Npc6132Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6133Data.id, 0, false, 0)
end

function Quest75096:OnSubFinish7509601(arg1)
    print("OnSubFinish7509601")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6133Data.alias)
end

return Quest75096
