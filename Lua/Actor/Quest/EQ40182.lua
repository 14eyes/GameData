require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40182 = class("Quest40182", QuestActorProxy)
Quest40182.defaultAlias = "Quest40182"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40182:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40182:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4018201"] = self.OnSubStart4018201}
end

function Quest40182:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4018201"] = self.OnSubFinish4018201}
end

function Quest40182:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40182:Start()
    print("Start")
end

function Quest40182:OnDestroy()
    print("OnDestroy")
end

function Quest40182:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40182:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40182:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14569.alias, 3)
end

function Quest40182:OnSubStart4018201(arg1)
    print("OnSubStart4018201")
    this:CreateQuestNpc(arg1, npcs.Npc14569.id, 0, false, 0)
end

function Quest40182:OnSubFinish4018201(arg1)
    print("OnSubFinish4018201")
    this:SafeDestroyQuestNpc(npcs.Npc14569.alias, 3)
end

return Quest40182
