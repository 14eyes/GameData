require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72001Trigger = class("Q72001Trigger", GadgetActorProxy)
Q72001Trigger.defaultAlias = "Q72001Trigger"
local Q72001ClientConfig = require("Quest/Client/Q72001ClientConfig")

local subIDs = Q72001ClientConfig.SubIDs
local npcs = Q72001ClientConfig.Npcs

function Q72001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72001Trigger:TriggerIn()
    print("TriggerIn")
end

function Q72001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72001Trigger
