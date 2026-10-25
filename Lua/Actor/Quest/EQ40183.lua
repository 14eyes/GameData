require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40183 = class("Quest40183", QuestActorProxy)
Quest40183.defaultAlias = "Quest40183"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40183:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40183:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4018301"] = self.OnSubStart4018301}
end

function Quest40183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4018301"] = self.OnSubFinish4018301}
end

function Quest40183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40183:Start()
    print("Start")
end

function Quest40183:OnDestroy()
    print("OnDestroy")
end

function Quest40183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40183:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14570.alias, 3)
end

function Quest40183:OnSubStart4018301(arg1)
    print("OnSubStart4018301")
    this:CreateQuestNpc(arg1, npcs.Npc14570.id, 0, false, 0)
end

function Quest40183:OnSubFinish4018301(arg1)
    print("OnSubFinish4018301")
    this:SafeDestroyQuestNpc(npcs.Npc14570.alias, 3)
end

return Quest40183
