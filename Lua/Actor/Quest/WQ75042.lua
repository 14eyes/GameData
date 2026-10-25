require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75042 = class("Quest75042", QuestActorProxy)
Quest75042.defaultAlias = "Quest75042"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75042:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75042:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7504201"] = self.OnSubStart7504201}
end

function Quest75042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7504201"] = self.OnSubFinish7504201}
end

function Quest75042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75042:OnSubStart7504201(arg1)
    print("OnSubStart7504201")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
end

function Quest75042:OnSubFinish7504201(arg1)
    print("OnSubFinish7504201")
    this:SafeDestroyQuestNpc(npcs.Npc21481.alias, 3)
end

return Quest75042
