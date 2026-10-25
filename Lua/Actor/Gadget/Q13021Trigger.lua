require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13021Trigger = class("Q13021Trigger", GadgetActorProxy)
Q13021Trigger.defaultAlias = "Q13021Trigger"
local Q13021ClientConfig = require("Quest/Client/Q13021ClientConfig")

local this
local subIDs = Q13021ClientConfig.SubIDs
local npcs = Q13021ClientConfig.Npcs
local datas = Q13021ClientConfig.Datas

function Q13021Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13021Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13021Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q13021Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13021Trigger
