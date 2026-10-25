require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917315Trigger = class("Q1917315Trigger", GadgetActorProxy)
Q1917315Trigger.defaultAlias = "Q1917315Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917315Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917315Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917315Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19173"):RequestInteraction(npcs.Npc12935Data.alias)
    this:DestroySelf()
end

function Q1917315Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917315Trigger
