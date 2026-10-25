require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917312Trigger = class("Q1917312Trigger", GadgetActorProxy)
Q1917312Trigger.defaultAlias = "Q1917312Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917312Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917312Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917312Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19173"):RequestInteraction(npcs.Npc12932Data.alias)
end

function Q1917312Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917312Trigger
