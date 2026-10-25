require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20504 = class("Quest20504", QuestActorProxy)
Quest20504.defaultAlias = "Quest20504"
local narratorData = require("Quest/Client/Q20504ClientConfig").NarratorData

function Quest20504:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050401"] = self.OnSubStart2050401
    self.subStartHandlers["2050402"] = self.OnSubStart2050402
    self.subStartHandlers["2050403"] = self.OnSubStart2050403
end

function Quest20504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050401"] = self.OnSubFinish2050401
    self.subFinishHandlers["2050402"] = self.OnSubFinish2050402
    self.subFinishHandlers["2050403"] = self.OnSubFinish2050403
end

function Quest20504:OnSubFinish2050401(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("Npc1435")
    end)
end

function Quest20504:OnSubFinish2050402(arg1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q20504_FocusPos").pos, 0, 3, true, true)
    self:NarratorOnlyTaskLegacy(narratorData.story1, nil, "Story")
    globalActor:EnablePlayerInput(false)
    self:CallDelay(4, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest20504:OnSubStart2050403(arg1)
    self:CallDelay(4, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest20504:Start() end
function Quest20504:OnDestroy() end
return Quest20504
