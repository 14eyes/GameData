require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20031 = class("Quest20031", QuestActorProxy)
Quest20031.defaultAlias = "Quest20031"
local Q20031ClientConfig = require("Quest/Client/Q20031ClientConfig")

function Quest20031:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003101"] = self.OnSubStart2003101
    self.subStartHandlers["2003102"] = self.OnSubStart2003102
    self.subStartHandlers["2003103"] = self.OnSubStart2003103
    self.subStartHandlers["2003104"] = self.OnSubStart2003104
    self.subStartHandlers["2003105"] = self.OnSubStart2003105
    self.subStartHandlers["2003106"] = self.OnSubStart2003106
    self.subStartHandlers["2003107"] = self.OnSubStart2003107
end

function Quest20031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003101"] = self.OnSubFinish2003101
    self.subFinishHandlers["2003102"] = self.OnSubFinish2003102
    self.subFinishHandlers["2003103"] = self.OnSubFinish2003103
    self.subFinishHandlers["2003104"] = self.OnSubFinish2003104
    self.subFinishHandlers["2003105"] = self.OnSubFinish2003105
    self.subFinishHandlers["2003106"] = self.OnSubFinish2003106
    self.subFinishHandlers["2003107"] = self.OnSubFinish2003107
end

function Quest20031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003101"] = self.OnSubFailed2003101
    self.subFailedHandlers["2003102"] = self.OnSubFailed2003102
    self.subFailedHandlers["2003103"] = self.OnSubFailed2003103
    self.subFailedHandlers["2003104"] = self.OnSubFailed2003104
    self.subFailedHandlers["2003105"] = self.OnSubFailed2003105
    self.subFailedHandlers["2003106"] = self.OnSubFailed2003106
    self.subFailedHandlers["2003107"] = self.OnSubFailed2003107
end

function Quest20031:OnSubFinish2003102(arg1)
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest20031:ShowTutorial(arg1)
    self:ShowTutorialDialog(234, function()
        globalActor:StartGuide("GuideAdventureDailyTask")
    end)
end

function Quest20031:OnSubFinish2003103(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("NPC1512")
    end)
end

function Quest20031:OnSubStart2003105(arg1) end

function Quest20031:OnSubFinish2003105(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("NPC1512")
    end)
end

function Quest20031:OnSubFinish2003106(arg1)
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest20031:Start() end
function Quest20031:OnDestroy() end
return Quest20031
