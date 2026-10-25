require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70549Trigger_2 = class("Q70549Trigger_2", GadgetActorProxy)
Q70549Trigger_2.defaultAlias = "Q70549Trigger_2"
local Q70549ClientConfig = require("Quest/Client/Q70549ClientConfig")

local this
local subIDs = Q70549ClientConfig.SubIDs
local npcs = Q70549ClientConfig.Npcs
local points = Q70549ClientConfig.Points

function Q70549Trigger_2:OnPostDataPrepare()
    print("Q70549Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q70549Trigger_2:OnPostComponentPrepare()
    print("Q70549Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70549)
end

function Q70549Trigger_2:TriggerIn()
    print("Q70549Trigger_2 - TriggerIn")
    actorMgr:GetActor("70549"):RequestInteraction(npcs.Npc1077.alias, "", true)
    this:DestroySelf()
end

function Q70549Trigger_2:PreTriggerIn()
    print("Q70549Trigger_2 - PreTriggerIn")
end

function Q70549Trigger_2:LightUpTriggerIn()
    print("Q70549Trigger_2 - LightUpTriggerIn")
end

function Q70549Trigger_2:TriggerOut()
    print("Q70549Trigger_2 - TriggerOut")
end

return Q70549Trigger_2
