require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73679Trigger = class("Q73679Trigger", GadgetActorProxy)
Q73679Trigger.defaultAlias = "Q73679Trigger"
local Q73679ClientConfig = require("Quest/Client/Q73679ClientConfig")

local subIDs = Q73679ClientConfig.SubIDs
local npcs = Q73679ClientConfig.Npcs

function Q73679Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73679Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73679Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q73679Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73679Trigger
