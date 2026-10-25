require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515601Trigger = class("Q7515601Trigger", GadgetActorProxy)
Q7515601Trigger.defaultAlias = "Q7515601Trigger"
local Q75156ClientConfig = require("Quest/Client/Q75156ClientConfig")

local this
local subIDs = Q75156ClientConfig.SubIDs
local npcs = Q75156ClientConfig.Npcs

function Q7515601Trigger:OnPostDataPrepare()
    print("[MainId: 75156][Trigger: Q7515601Trigger] OnPostDataPrepare")
    this = self
end

function Q7515601Trigger:OnPostComponentPrepare()
    print("[MainId: 75156][Trigger: Q7515601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75156)
end

function Q7515601Trigger:TriggerIn()
    print("[MainId: 75156][Trigger: Q7515601Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7515601Trigger:PreTriggerIn()
    print("[MainId: 75156][Trigger: Q7515601Trigger] PreTriggerIn")
end

function Q7515601Trigger:LightUpTriggerIn()
    print("[MainId: 75156][Trigger: Q7515601Trigger] LightUpTriggerIn")
end

function Q7515601Trigger:TriggerOut()
    print("[MainId: 75156][Trigger: Q7515601Trigger] TriggerOut")
end

return Q7515601Trigger
