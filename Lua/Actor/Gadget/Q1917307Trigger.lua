require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917307Trigger = class("Q1917307Trigger", GadgetActorProxy)
Q1917307Trigger.defaultAlias = "Q1917307Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917307Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917307Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(29, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917307Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19173"):RequestInteraction(npcs.Npc12932Data.alias)
    this:DestroySelf()
end

function Q1917307Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917307Trigger
