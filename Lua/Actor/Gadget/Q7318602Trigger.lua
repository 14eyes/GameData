require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318602Trigger = class("Q7318602Trigger", GadgetActorProxy)
Q7318602Trigger.defaultAlias = "Q7318602Trigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs

function Q7318602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7318602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318602Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q7318602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7318602Trigger
