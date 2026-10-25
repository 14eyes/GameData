require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72225Trigger = class("Q72225Trigger", GadgetActorProxy)
Q72225Trigger.defaultAlias = "Q72225Trigger"
local Q72225ClientConfig = require("Quest/Client/Q72225ClientConfig")

local subIDs = Q72225ClientConfig.SubIDs
local npcs = Q72225ClientConfig.Npcs

function Q72225Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72225Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72225Trigger:TriggerIn()
    print("TriggerIn")
end

function Q72225Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72225Trigger
