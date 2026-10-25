require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4027 = class("Quest4027", QuestActorProxy)
Quest4027.defaultAlias = "Quest4027"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest4027:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest4027:OnSubStartHandlerBuild()
    self.subStartHandlers = {["402701"] = self.OnSubStart402701}
end

function Quest4027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["402701"] = self.OnSubFinish402701}
end

function Quest4027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4027:Start()
    print("Start")
end

function Quest4027:OnDestroy()
    print("OnDestroy")
end

function Quest4027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4027:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest4027:OnSubStart402701(arg1)
    print("OnSubStart402701")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1076Data.id, 0)
end

function Quest4027:OnSubFinish402701(arg1)
    print("OnSubFinish402701")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
end

return Quest4027
