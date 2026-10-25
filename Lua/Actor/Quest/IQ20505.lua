require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20505 = class("Quest20505", QuestActorProxy)
Quest20505.defaultAlias = "Quest20505"
local narratorData = require("Quest/Client/Q20505ClientConfig").NarratorData

function Quest20505:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050501"] = self.OnSubStart2050501
    self.subStartHandlers["2050502"] = self.OnSubStart2050502
end

function Quest20505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050501"] = self.OnSubFinish2050501
    self.subFinishHandlers["2050502"] = self.OnSubFinish2050502
end

function Quest20505:OnSubFinish2050501(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("NPC1512")
    end)
end

function Quest20505:Start() end
function Quest20505:OnDestroy() end
return Quest20505
