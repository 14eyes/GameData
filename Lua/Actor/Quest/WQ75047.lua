require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75047 = class("Quest75047", QuestActorProxy)
Quest75047.defaultAlias = "Quest75047"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75047:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75047:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7504701"] = self.OnSubStart7504701}
end

function Quest75047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7504701"] = self.OnSubFinish7504701}
end

function Quest75047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75047:OnSubStart7504701(arg1)
    print("OnSubStart7504701")
    this:CreateQuestNpc(arg1, npcs.Npc21495.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21495.alias, 75047):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest75047:OnSubFinish7504701(arg1)
    print("OnSubFinish7504701")
    this:SafeDestroyQuestNpc(npcs.Npc21495.alias, 3)
end

return Quest75047
