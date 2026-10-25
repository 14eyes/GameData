require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700002Trigger = class("Q7700002Trigger", GadgetActorProxy)
Q7700002Trigger.defaultAlias = "Q7700002Trigger"
local Q77000ClientConfig = require("Quest/Client/Q77000ClientConfig")

local this
local subIDs = Q77000ClientConfig.SubIDs
local npcs = Q77000ClientConfig.Npcs
local points = Q77000ClientConfig.Points

function Q7700002Trigger:OnPostDataPrepare()
    print("Q7700002Trigger - OnPostDataPrepare")
    this = self
end

function Q7700002Trigger:OnPostComponentPrepare()
    print("Q7700002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77000)
end

function Q7700002Trigger:TriggerIn()
    print("Q7700002Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700002})
    this:DestroySelf()
end

function Q7700002Trigger:PreTriggerIn()
    print("Q7700002Trigger - PreTriggerIn")
end

function Q7700002Trigger:LightUpTriggerIn()
    print("Q7700002Trigger - LightUpTriggerIn")
end

function Q7700002Trigger:TriggerOut()
    print("Q7700002Trigger - TriggerOut")
end

return Q7700002Trigger
