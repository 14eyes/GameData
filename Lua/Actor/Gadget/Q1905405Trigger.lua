require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905405Trigger = class("Q1905405Trigger", GadgetActorProxy)
Q1905405Trigger.defaultAlias = "Q1905405Trigger"
local Q19054ClientConfig = require("Quest/Client/Q19054ClientConfig")

local subIDs = Q19054ClientConfig.SubIDs
local npcs = Q19054ClientConfig.Npcs
local gadgets = Q19054ClientConfig.Gadgets

function Q1905405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905405Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19054"):RequestInteraction(npcs.Npc2306Data.alias)
    self:DestroySelf()
end

function Q1905405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905405Trigger
