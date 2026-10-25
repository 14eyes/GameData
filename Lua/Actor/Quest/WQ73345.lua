require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73345 = class("Quest73345", QuestActorProxy)
Quest73345.defaultAlias = "Quest73345"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73345:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73345:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7334501"] = self.OnSubStart7334501}
end

function Quest73345:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7334501"] = self.OnSubFinish7334501}
end

function Quest73345:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73345:Start()
    print("Start")
end

function Quest73345:OnDestroy()
    print("OnDestroy")
end

function Quest73345:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73345:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73345:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73345:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73345:OnSubStart7334501(arg1)
    print("OnSubStart7334501")
    this:CreateQuestNpc(arg1, npcs.Npc20927Data.id, 1)
end

function Quest73345:OnSubFinish7334501(arg1)
    print("OnSubFinish7334501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20927Data.alias)
end

return Quest73345
