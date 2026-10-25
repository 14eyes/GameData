require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7607412Trigger = class("Q7607412Trigger", GadgetActorProxy)
Q7607412Trigger.defaultAlias = "Q7607412Trigger"
local Q76074ClientConfig = require("Quest/Client/Q76074ClientConfig")

local this
local subIDs = Q76074ClientConfig.SubIDs
local npcs = Q76074ClientConfig.Npcs
local points = Q76074ClientConfig.Points

function Q7607412Trigger:OnPostDataPrepare()
    print("Q7607412Trigger - OnPostDataPrepare")
    this = self
end

function Q7607412Trigger:OnPostComponentPrepare()
    print("Q7607412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76074)
end

function Q7607412Trigger:TriggerIn()
    print("Q7607412Trigger - TriggerIn")
    actorMgr:GetActor("76074"):RequestInteraction(npcs.Npc7667.alias, "", true)
    this:DestroySelf()
end

function Q7607412Trigger:PreTriggerIn()
    print("Q7607412Trigger - PreTriggerIn")
end

function Q7607412Trigger:LightUpTriggerIn()
    print("Q7607412Trigger - LightUpTriggerIn")
end

function Q7607412Trigger:TriggerOut()
    print("Q7607412Trigger - TriggerOut")
end

return Q7607412Trigger
