require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73327 = class("Quest73327", QuestActorProxy)
Quest73327.defaultAlias = "Quest73327"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73327:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73327:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332701"] = self.OnSubStart7332701, ["7332702"] = self.OnSubStart7332702}
end

function Quest73327:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332701"] = self.OnSubFinish7332701, ["7332702"] = self.OnSubFinish7332702}
end

function Quest73327:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73327:Start()
    print("Start")
end

function Quest73327:OnDestroy()
    print("OnDestroy")
end

function Quest73327:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73327:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73327:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73327:OnSubStart7332701(arg1)
    print("OnSubStart7332701")
    this:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20723Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc20724Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest73327:OnSubFinish7332701(arg1)
    print("OnSubFinish7332701")
end

function Quest73327:OnSubStart7332702(arg1)
    print("OnSubStart7332702")
end

function Quest73327:OnSubFinish7332702(arg1)
    print("OnSubFinish7332702")
end

return Quest73327
