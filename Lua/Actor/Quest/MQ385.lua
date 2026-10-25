require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest385 = class("Quest385", QuestActorProxy)
Quest385.defaultAlias = "Quest385"
local Q385ClientConfig = require("Quest/Client/Q385ClientConfig")

function Quest385:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38501"] = self.OnSubStart38501
end

function Quest385:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38501"] = self.OnSubFinish38501
end

function Quest385:OnSubStart38501(arg1)
    print("38501 start ")
end

function Quest385:OnSubFinish38501(arg1)
    print("OnFinished 38501")
end

function Quest385:Start() end
function Quest385:OnDestroy() end
return Quest385
