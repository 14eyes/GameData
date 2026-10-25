require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40181 = class("Quest40181", QuestActorProxy)
Quest40181.defaultAlias = "Quest40181"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40181:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40181:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4018101"] = self.OnSubStart4018101}
end

function Quest40181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4018101"] = self.OnSubFinish4018101}
end

function Quest40181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40181:Start()
    print("Start")
end

function Quest40181:OnDestroy()
    print("OnDestroy")
end

function Quest40181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40181:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14568.alias, 3)
end

function Quest40181:OnSubStart4018101(arg1)
    print("OnSubStart4018101")
    this:CreateQuestNpc(arg1, npcs.Npc14568.id, 0, false, 0)
end

function Quest40181:OnSubFinish4018101(arg1)
    print("OnSubFinish4018101")
    this:SafeDestroyQuestNpc(npcs.Npc14568.alias, 3)
end

return Quest40181
