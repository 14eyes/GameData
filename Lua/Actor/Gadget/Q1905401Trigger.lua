require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905401Trigger = class("Q1905401Trigger", GadgetActorProxy)
Q1905401Trigger.defaultAlias = "Q1905401Trigger"
local Q19054ClientConfig = require("Quest/Client/Q19054ClientConfig")

local subIDs = Q19054ClientConfig.SubIDs
local npcs = Q19054ClientConfig.Npcs
local gadgets = Q19054ClientConfig.Gadgets

function Q1905401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905401Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19054"):RequestInteraction(npcs.Npc2306Data.alias)
    self:DestroySelf()
end

function Q1905401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905401Trigger
