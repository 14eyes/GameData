require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70667Trigger = class("Q70667Trigger", GadgetActorProxy)
Q70667Trigger.defaultAlias = "Q70667Trigger"
local Q70667ClientConfig = require("Quest/Client/Q70667ClientConfig")

local this
local subIDs = Q70667ClientConfig.SubIDs
local npcs = Q70667ClientConfig.Npcs

function Q70667Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70667Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.LightUpTriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
end

function Q70667Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("70667"):RequestInteractionEx("Npc1713")
    this:DestroySelf()
end

function Q70667Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70667Trigger
