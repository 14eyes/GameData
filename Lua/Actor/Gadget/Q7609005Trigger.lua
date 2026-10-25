require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609005Trigger = class("Q7609005Trigger", GadgetActorProxy)
Q7609005Trigger.defaultAlias = "Q7609005Trigger"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609005Trigger:OnPostDataPrepare()
    print("Q7609005Trigger - OnPostDataPrepare")
    this = self
end

function Q7609005Trigger:OnPostComponentPrepare()
    print("Q7609005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609005Trigger:TriggerIn()
    print("Q7609005Trigger - TriggerIn")
    actorMgr:GetActor("76090"):RequestInteraction(npcs.Npc22265.alias, "", true)
    this:DestroySelf()
end

function Q7609005Trigger:PreTriggerIn()
    print("Q7609005Trigger - PreTriggerIn")
end

function Q7609005Trigger:LightUpTriggerIn()
    print("Q7609005Trigger - LightUpTriggerIn")
end

function Q7609005Trigger:TriggerOut()
    print("Q7609005Trigger - TriggerOut")
end

return Q7609005Trigger
