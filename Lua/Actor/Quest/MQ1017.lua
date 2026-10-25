require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1017 = class("Quest1017", QuestActorProxy)
Quest1017.defaultAlias = "Quest1017"
local subIDs = require("Quest/Client/Q1017ClientConfig").SubIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1017:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101701"] = self.OnSubStart101701
    self.subStartHandlers["101702"] = self.OnSubStart101702
    self.subStartHandlers["101703"] = self.OnSubStart101703
    self.subStartHandlers["101704"] = self.OnSubStart101704
    self.subStartHandlers["101705"] = self.OnSubStart101705
end

function Quest1017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101701"] = self.OnSubFinish101701
    self.subFinishHandlers["101702"] = self.OnSubFinish101702
    self.subFinishHandlers["101703"] = self.OnSubFinish101703
    self.subFinishHandlers["101704"] = self.OnSubFinish101704
    self.subFinishHandlers["101705"] = self.OnSubFinish101705
end

function Quest1017:OnSubStart101701(arg1)
    print("101701 start:...")
end

function Quest1017:OnSubStart101702(arg1)
    print("101702 start:...")
end

function Quest1017:OnSubStart101703(arg1)
    print("101703 start:...")
end

function Quest1017:OnSubStart101704(arg1)
    print("101704 start:...")
end

function Quest1017:OnSubStart101705(arg1)
    print("101705 start:...")
end

function Quest1017:OnSubFinish101701(arg1)
    print("OnFinished 101701")
end

function Quest1017:OnSubFinish101702(arg1)
    print("OnFinished 101702")
end

function Quest1017:OnSubFinish101703(arg1)
    print("OnFinished 101703")
end

function Quest1017:OnSubFinish101704(arg1)
    print("OnFinished 101704")
end

function Quest1017:OnSubFinish101705(arg1)
    print("OnFinished 101705")
end

function Quest1017:Start() end
function Quest1017:OnDestroy() end
return Quest1017
