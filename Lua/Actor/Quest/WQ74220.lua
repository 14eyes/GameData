require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74220 = class("Quest74220", QuestActorProxy)
Quest74220.defaultAlias = "Quest74220"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74220:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422001"] = self.OnSubStart7422001,
        ["7422002"] = self.OnSubStart7422002,
        ["7422003"] = self.OnSubStart7422003,
        ["7422004"] = self.OnSubStart7422004
    }
end

function Quest74220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422001"] = self.OnSubFinish7422001,
        ["7422002"] = self.OnSubFinish7422002,
        ["7422003"] = self.OnSubFinish7422003,
        ["7422004"] = self.OnSubFinish7422004
    }
end

function Quest74220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74220:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest74220:OnSubStart7422001(arg1)
    print("OnSubStart7422001")
    this:CreateQuestNpc(arg1, npcs.Npc6415.id, 0, false, 0)
end

function Quest74220:OnSubFinish7422001(arg1)
    print("OnSubFinish7422001")
    this:SafeDestroyQuestNpc(npcs.Npc6415.alias, 3)
end

function Quest74220:OnSubStart7422002(arg1)
    print("OnSubStart7422002")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6415.id, arg1)
end

function Quest74220:OnSubFinish7422002(arg1)
    print("OnSubFinish7422002")
end

function Quest74220:OnSubStart7422003(arg1)
    print("OnSubStart7422003")
end

function Quest74220:OnSubFinish7422003(arg1)
    print("OnSubFinish7422003")
end

function Quest74220:OnSubStart7422004(arg1)
    print("OnSubStart7422004")
end

function Quest74220:OnSubFinish7422004(arg1)
    print("OnSubFinish7422004")
    this:SafeDestroyQuestNpc(npcs.Npc6415.alias, 3)
end

return Quest74220
