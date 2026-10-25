require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77244 = class("Quest77244", QuestActorProxy)
Quest77244.defaultAlias = "Quest77244"
local clientData
local this
local mainID
local actorAlias

function Quest77244:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77244:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7724401"] = self.OnSubStart7724401,
        ["7724402"] = self.OnSubStart7724402,
        ["7724403"] = self.OnSubStart7724403
    }
end

function Quest77244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7724401"] = self.OnSubFinish7724401,
        ["7724402"] = self.OnSubFinish7724402,
        ["7724403"] = self.OnSubFinish7724403
    }
end

function Quest77244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77244:OnSubStart7724401(arg1)
    print("OnSubStart7724401")
    this:DeployStoryByQuest(147717010)
end

function Quest77244:OnSubFinish7724401(arg1)
    print("OnSubFinish7724401")
end

function Quest77244:OnSubStart7724402(arg1)
    print("OnSubStart7724402")
    this:DeployStoryByQuest(147717010)
end

function Quest77244:OnSubFinish7724402(arg1)
    print("OnSubFinish7724402")
end

function Quest77244:OnSubStart7724403(arg1)
    print("OnSubStart7724403")
end

function Quest77244:OnSubFinish7724403(arg1)
    print("OnSubFinish7724403")
end

return Quest77244
