require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70549Trigger_1 = class("Q70549Trigger_1", GadgetActorProxy)
Q70549Trigger_1.defaultAlias = "Q70549Trigger_1"
local Q70549ClientConfig = require("Quest/Client/Q70549ClientConfig")

local this
local subIDs = Q70549ClientConfig.SubIDs
local npcs = Q70549ClientConfig.Npcs
local points = Q70549ClientConfig.Points

function Q70549Trigger_1:OnPostDataPrepare()
    print("Q70549Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q70549Trigger_1:OnPostComponentPrepare()
    print("Q70549Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70549)
end

function Q70549Trigger_1:TriggerIn()
    print("Q70549Trigger_1 - TriggerIn")
    actorMgr:GetActor("70549"):RequestInteraction(npcs.Npc1077.alias, "", true)
    this:DestroySelf()
end

function Q70549Trigger_1:PreTriggerIn()
    print("Q70549Trigger_1 - PreTriggerIn")
end

function Q70549Trigger_1:LightUpTriggerIn()
    print("Q70549Trigger_1 - LightUpTriggerIn")
end

function Q70549Trigger_1:TriggerOut()
    print("Q70549Trigger_1 - TriggerOut")
end

return Q70549Trigger_1
