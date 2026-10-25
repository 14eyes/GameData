require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5035 = class("Quest5035", QuestActorProxy)
Quest5035.defaultAlias = "Quest5035"
local clientData
local this
local mainID
local actorAlias
local points

function Quest5035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest5035:OnSubStartHandlerBuild()
    self.subStartHandlers = {["503501"] = self.OnSubStart503501}
end

function Quest5035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["503501"] = self.OnSubFinish503501}
end

function Quest5035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5035:OnSubStart503501(arg1)
    print("OnSubStart503501")
    actorMgr:CreateActorWithPos("Q503501Trigger", "Actor/Gadget/Q503501Trigger", 70900002, 0, points._Q503501TriggerPoint_.pos, points._Q503501TriggerPoint_.rot, true, false, 3)
    if this:GetQuestVar(503501, 0) == 1 then
        actorMgr:CreateActorWithPos("Q503501Trigger_1", "Actor/Gadget/Q503501Trigger_1", 70900002, 0, points._Q503501Trigger_1Point_.pos, points._Q503501Trigger_1Point_.rot, true, false, 3)
    end
end

function Quest5035:OnSubFinish503501(arg1)
    print("OnSubFinish503501")
    this:ActorDestroy("Q503501Trigger")
    this:ActorDestroy("Q503501Trigger_1")
end

return Quest5035
