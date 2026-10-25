require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75127 = class("Quest75127", QuestActorProxy)
Quest75127.defaultAlias = "Quest75127"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75127:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75127:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7512701"] = self.OnSubStart7512701}
end

function Quest75127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7512701"] = self.OnSubFinish7512701}
end

function Quest75127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75127:OnSubStart7512701(arg1)
    print("OnSubStart7512701")
    this:CreateQuestNpc(arg1, npcs.Npc21705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21705.alias, 75127):DoFreeStyle(4222, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7512701Trigger", "Actor/Gadget/Q7512701Trigger", 70900002, 0, points._Q7512701TriggerPoint_.pos, points._Q7512701TriggerPoint_.rot, true, false, 3)
end

function Quest75127:OnSubFinish7512701(arg1)
    print("OnSubFinish7512701")
    this:SafeDestroyQuestNpc(npcs.Npc21705.alias, 3)
end

return Quest75127
