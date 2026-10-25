require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73063Trigger = class("Q73063Trigger", GadgetActorProxy)
Q73063Trigger.defaultAlias = "Q73063Trigger"
local Q73063ClientConfig = require("Quest/Client/Q73063ClientConfig")

local subIDs = Q73063ClientConfig.SubIDs
local npcs = Q73063ClientConfig.Npcs

function Q73063Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73063Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73063Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q73063Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73063Trigger
