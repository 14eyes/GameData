require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75130 = class("Quest75130", QuestActorProxy)
Quest75130.defaultAlias = "Quest75130"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75130:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513001"] = self.OnSubStart7513001,
        ["7513002"] = self.OnSubStart7513002,
        ["7513003"] = self.OnSubStart7513003
    }
end

function Quest75130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513001"] = self.OnSubFinish7513001,
        ["7513002"] = self.OnSubFinish7513002,
        ["7513003"] = self.OnSubFinish7513003
    }
end

function Quest75130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75130:OnSubStart7513001(arg1)
    print("OnSubStart7513001")
    this:CreateQuestNpc(arg1, npcs.Npc21746.id, 0, false, 0)
end

function Quest75130:OnSubFinish7513001(arg1)
    print("OnSubFinish7513001")
end

function Quest75130:OnSubStart7513002(arg1)
    print("OnSubStart7513002")
end

function Quest75130:OnSubFinish7513002(arg1)
    print("OnSubFinish7513002")
    this:SafeDestroyQuestNpc(npcs.Npc21746.alias, 3)
end

function Quest75130:OnSubStart7513003(arg1)
    print("OnSubStart7513003")
    this:CreateQuestNpc(arg1, npcs.Npc21744.id, 0, false, 0)
end

function Quest75130:OnSubFinish7513003(arg1)
    print("OnSubFinish7513003")
    this:SafeDestroyQuestNpc(npcs.Npc21744.alias, 3)
end

return Quest75130
