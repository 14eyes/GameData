require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20506 = class("Quest20506", QuestActorProxy)
Quest20506.defaultAlias = "Quest20506"
local narratorData = require("Quest/Client/Q20506ClientConfig").NarratorData

function Quest20506:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050601"] = self.OnSubStart2050601
    self.subStartHandlers["2050602"] = self.OnSubStart2050602
end

function Quest20506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050601"] = self.OnSubFinish2050601
    self.subFinishHandlers["2050602"] = self.OnSubFinish2050602
end

function Quest20506:OnSubFinish2050601(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("Npc1587")
    end)
end

function Quest20506:Start() end
function Quest20506:OnDestroy() end
return Quest20506
