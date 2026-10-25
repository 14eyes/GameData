require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20507 = class("Quest20507", QuestActorProxy)
Quest20507.defaultAlias = "Quest20507"
local Q20507ClientConfig = require("Quest/Client/Q20507ClientConfig")

function Quest20507:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050701"] = self.OnSubStart2050701
    self.subStartHandlers["2050702"] = self.OnSubStart2050702
end

function Quest20507:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050701"] = self.OnSubFinish2050701
    self.subFinishHandlers["2050702"] = self.OnSubFinish2050702
end

function Quest20507:OnSubStart2050702(arg1)
    globalActor:StartGuide("GuideTransport")
end

function Quest20507:Start() end
function Quest20507:OnDestroy() end
return Quest20507
