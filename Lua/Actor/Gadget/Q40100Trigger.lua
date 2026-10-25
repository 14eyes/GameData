require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40100Trigger = class("Q40100Trigger", GadgetActorProxy)
Q40100Trigger.defaultAlias = "Q40100Trigger"
local Q40100ClientConfig = require("Quest/Client/Q40100ClientConfig")

local this
local subIDs = Q40100ClientConfig.SubIDs
local npcs = Q40100ClientConfig.Npcs

function Q40100Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40100Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40100Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q40100Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40100Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40100Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40100Trigger
