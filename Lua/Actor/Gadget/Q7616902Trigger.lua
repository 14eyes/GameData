require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616902Trigger = class("Q7616902Trigger", GadgetActorProxy)
Q7616902Trigger.defaultAlias = "Q7616902Trigger"
local Q76169ClientConfig = require("Quest/Client/Q76169ClientConfig")

local this
local subIDs = Q76169ClientConfig.SubIDs
local npcs = Q76169ClientConfig.Npcs
local points = Q76169ClientConfig.Points

function Q7616902Trigger:OnPostDataPrepare()
    print("Q7616902Trigger - OnPostDataPrepare")
    this = self
end

function Q7616902Trigger:OnPostComponentPrepare()
    print("Q7616902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76169)
end

function Q7616902Trigger:TriggerIn()
    print("Q7616902Trigger - TriggerIn")
    actorMgr:GetActor("76169"):RequestInteraction(npcs.Npc7181.alias, "", true)
    this:DestroySelf()
end

function Q7616902Trigger:PreTriggerIn()
    print("Q7616902Trigger - PreTriggerIn")
end

function Q7616902Trigger:LightUpTriggerIn()
    print("Q7616902Trigger - LightUpTriggerIn")
end

function Q7616902Trigger:TriggerOut()
    print("Q7616902Trigger - TriggerOut")
end

return Q7616902Trigger
