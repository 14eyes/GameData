require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73216Trigger = class("Q73216Trigger", GadgetActorProxy)
Q73216Trigger.defaultAlias = "Q73216Trigger"
local subIDs = require("Quest/Client/Q73216ClientConfig").SubIDs

function Q73216Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73216Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(125, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73216Trigger:TriggerIn()
    print("TriggerIn")
    self:EnterCombatSneakMode(25)
end

function Q73216Trigger:TriggerOut()
    print("TriggerOut")
    self:ExitCombatSneakMode()
end

return Q73216Trigger
