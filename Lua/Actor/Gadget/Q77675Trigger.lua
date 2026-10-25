require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77675Trigger = class("Q77675Trigger", GadgetActorProxy)
Q77675Trigger.defaultAlias = "Q77675Trigger"
local Q77675ClientConfig = require("Quest/Client/Q77675ClientConfig")

local this
local subIDs = Q77675ClientConfig.SubIDs
local points = Q77675ClientConfig.Points

function Q77675Trigger:OnPostDataPrepare()
    print("Q77675Trigger - OnPostDataPrepare")
    this = self
end

function Q77675Trigger:OnPostComponentPrepare()
    print("Q77675Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77675)
end

function Q77675Trigger:TriggerIn()
    print("Q77675Trigger - TriggerIn")
end

function Q77675Trigger:PreTriggerIn()
    print("Q77675Trigger - PreTriggerIn")
end

function Q77675Trigger:LightUpTriggerIn()
    print("Q77675Trigger - LightUpTriggerIn")
end

function Q77675Trigger:TriggerOut()
    print("Q77675Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7767501})
    this:DestroySelf()
end

return Q77675Trigger
