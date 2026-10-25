require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500603Trigger = class("Q1500603Trigger", GadgetActorProxy)
Q1500603Trigger.defaultAlias = "Q1500603Trigger"
local Q15006ClientConfig = require("Quest/Client/Q15006ClientConfig")

local this
local subIDs = Q15006ClientConfig.SubIDs
local npcs = Q15006ClientConfig.Npcs
local points = Q15006ClientConfig.Points

function Q1500603Trigger:OnPostDataPrepare()
    print("Q1500603Trigger - OnPostDataPrepare")
    this = self
end

function Q1500603Trigger:OnPostComponentPrepare()
    print("Q1500603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15006)
end

function Q1500603Trigger:TriggerIn()
    print("Q1500603Trigger - TriggerIn")
    actorMgr:GetActor("15006"):RequestInteraction(npcs.Npc14304.alias, "", true)
    this:DestroySelf()
end

function Q1500603Trigger:PreTriggerIn()
    print("Q1500603Trigger - PreTriggerIn")
end

function Q1500603Trigger:LightUpTriggerIn()
    print("Q1500603Trigger - LightUpTriggerIn")
end

function Q1500603Trigger:TriggerOut()
    print("Q1500603Trigger - TriggerOut")
end

return Q1500603Trigger
