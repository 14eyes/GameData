require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7471701Trigger = class("Q7471701Trigger", GadgetActorProxy)
Q7471701Trigger.defaultAlias = "Q7471701Trigger"
local Q74717ClientConfig = require("Quest/Client/Q74717ClientConfig")

local this
local subIDs = Q74717ClientConfig.SubIDs
local points = Q74717ClientConfig.Points

function Q7471701Trigger:OnPostDataPrepare()
    print("Q7471701Trigger - OnPostDataPrepare")
    this = self
end

function Q7471701Trigger:OnPostComponentPrepare()
    print("Q7471701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74717)
end

function Q7471701Trigger:TriggerIn()
    print("Q7471701Trigger - TriggerIn")
end

function Q7471701Trigger:PreTriggerIn()
    print("Q7471701Trigger - PreTriggerIn")
end

function Q7471701Trigger:LightUpTriggerIn()
    print("Q7471701Trigger - LightUpTriggerIn")
end

function Q7471701Trigger:TriggerOut()
    print("Q7471701Trigger - TriggerOut")
    actorUtils.FinishQuestWithParam({false}, {7471702})
    this:DestroySelf()
end

return Q7471701Trigger
