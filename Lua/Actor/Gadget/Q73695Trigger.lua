require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73695Trigger = class("Q73695Trigger", GadgetActorProxy)
Q73695Trigger.defaultAlias = "Q73695Trigger"
local Q73695ClientConfig = require("Quest/Client/Q73695ClientConfig")

local this
local subIDs = Q73695ClientConfig.SubIDs
local npcs = Q73695ClientConfig.Npcs
local points = Q73695ClientConfig.Points

function Q73695Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73695Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73695Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73695"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("73695"):RequestInteractionForceAlias("Npc30351")
        this:DestroySelf()
    end)
end

function Q73695Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73695Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73695Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73695Trigger
