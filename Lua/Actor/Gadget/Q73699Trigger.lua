require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73699Trigger = class("Q73699Trigger", GadgetActorProxy)
Q73699Trigger.defaultAlias = "Q73699Trigger"
local Q73699ClientConfig = require("Quest/Client/Q73699ClientConfig")

local this
local subIDs = Q73699ClientConfig.SubIDs
local npcs = Q73699ClientConfig.Npcs

function Q73699Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73699Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73699Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73699"):RequestInteraction(npcs.Npc4284Data.alias)
    this:DestroySelf()
end

function Q73699Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73699Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73699Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73699Trigger
