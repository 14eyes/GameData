require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70555Trigger = class("Q70555Trigger", GadgetActorProxy)
Q70555Trigger.defaultAlias = "Q70555Trigger"
local Q70555ClientConfig = require("Quest/Client/Q70555ClientConfig")

local this
local subIDs = Q70555ClientConfig.SubIDs
local npcs = Q70555ClientConfig.Npcs
local points = Q70555ClientConfig.Points

function Q70555Trigger:OnPostDataPrepare()
    print("Q70555Trigger - OnPostDataPrepare")
    this = self
end

function Q70555Trigger:OnPostComponentPrepare()
    print("Q70555Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70555)
end

function Q70555Trigger:TriggerIn()
    print("Q70555Trigger - TriggerIn")
    actorMgr:GetActor("70555"):RequestInteraction(npcs.Npc30970.alias, "", true)
    this:DestroySelf()
end

function Q70555Trigger:PreTriggerIn()
    print("Q70555Trigger - PreTriggerIn")
end

function Q70555Trigger:LightUpTriggerIn()
    print("Q70555Trigger - LightUpTriggerIn")
end

function Q70555Trigger:TriggerOut()
    print("Q70555Trigger - TriggerOut")
end

return Q70555Trigger
