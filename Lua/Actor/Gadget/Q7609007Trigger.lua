require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609007Trigger = class("Q7609007Trigger", GadgetActorProxy)
Q7609007Trigger.defaultAlias = "Q7609007Trigger"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609007Trigger:OnPostDataPrepare()
    print("Q7609007Trigger - OnPostDataPrepare")
    this = self
end

function Q7609007Trigger:OnPostComponentPrepare()
    print("Q7609007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609007Trigger:TriggerIn()
    print("Q7609007Trigger - TriggerIn")
    actorMgr:GetActor("76090"):RequestInteraction(npcs.Npc22265.alias, "", true)
    this:DestroySelf()
end

function Q7609007Trigger:PreTriggerIn()
    print("Q7609007Trigger - PreTriggerIn")
end

function Q7609007Trigger:LightUpTriggerIn()
    print("Q7609007Trigger - LightUpTriggerIn")
end

function Q7609007Trigger:TriggerOut()
    print("Q7609007Trigger - TriggerOut")
end

return Q7609007Trigger
