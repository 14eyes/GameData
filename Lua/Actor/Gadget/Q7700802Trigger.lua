require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700802Trigger = class("Q7700802Trigger", GadgetActorProxy)
Q7700802Trigger.defaultAlias = "Q7700802Trigger"
local Q77008ClientConfig = require("Quest/Client/Q77008ClientConfig")

local this
local subIDs = Q77008ClientConfig.SubIDs
local datas = Q77008ClientConfig.Datas
local npcs = Q77008ClientConfig.Npcs
local points = Q77008ClientConfig.Points

function Q7700802Trigger:OnPostDataPrepare()
    print("Q7700802Trigger - OnPostDataPrepare")
    this = self
end

function Q7700802Trigger:OnPostComponentPrepare()
    print("Q7700802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77008)
end

function Q7700802Trigger:TriggerIn()
    print("Q7700802Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700802})
    this:DestroySelf()
end

function Q7700802Trigger:PreTriggerIn()
    print("Q7700802Trigger - PreTriggerIn")
end

function Q7700802Trigger:LightUpTriggerIn()
    print("Q7700802Trigger - LightUpTriggerIn")
end

function Q7700802Trigger:TriggerOut()
    print("Q7700802Trigger - TriggerOut")
end

return Q7700802Trigger
