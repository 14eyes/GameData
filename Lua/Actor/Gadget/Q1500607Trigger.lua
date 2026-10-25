require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500607Trigger = class("Q1500607Trigger", GadgetActorProxy)
Q1500607Trigger.defaultAlias = "Q1500607Trigger"
local Q15006ClientConfig = require("Quest/Client/Q15006ClientConfig")

local this
local subIDs = Q15006ClientConfig.SubIDs
local npcs = Q15006ClientConfig.Npcs
local points = Q15006ClientConfig.Points

function Q1500607Trigger:OnPostDataPrepare()
    print("Q1500607Trigger - OnPostDataPrepare")
    this = self
end

function Q1500607Trigger:OnPostComponentPrepare()
    print("Q1500607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15006)
end

function Q1500607Trigger:TriggerIn()
    print("Q1500607Trigger - TriggerIn")
    actorMgr:GetActor("15006"):RequestInteraction(npcs.Npc14303.alias, "", true)
    this:DestroySelf()
end

function Q1500607Trigger:PreTriggerIn()
    print("Q1500607Trigger - PreTriggerIn")
end

function Q1500607Trigger:LightUpTriggerIn()
    print("Q1500607Trigger - LightUpTriggerIn")
end

function Q1500607Trigger:TriggerOut()
    print("Q1500607Trigger - TriggerOut")
end

return Q1500607Trigger
