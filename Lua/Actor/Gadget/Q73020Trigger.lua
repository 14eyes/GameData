require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73020Trigger = class("Q73020Trigger", GadgetActorProxy)
Q73020Trigger.defaultAlias = "Q73020Trigger"
local Q73020ClientConfig = require("Quest/Client/Q73020ClientConfig")

local subIDs = Q73020ClientConfig.SubIDs
local npcs = Q73020ClientConfig.Npcs

function Q73020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73020"):RequestInteraction("4192")
    self:DestroySelf()
end

function Q73020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73020Trigger
