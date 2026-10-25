require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325706Trigger = class("Q7325706Trigger", GadgetActorProxy)
Q7325706Trigger.defaultAlias = "Q7325706Trigger"
local Q73257ClientConfig = require("Quest/Client/Q73257ClientConfig")

local this
local subIDs = Q73257ClientConfig.SubIDs
local npcs = Q73257ClientConfig.Npcs

function Q7325706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325706Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q7325706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325706Trigger
