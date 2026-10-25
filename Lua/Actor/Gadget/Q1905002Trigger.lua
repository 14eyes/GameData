require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905002Trigger = class("Q1905002Trigger", GadgetActorProxy)
Q1905002Trigger.defaultAlias = "Q1905002Trigger"
local Q19050ClientConfig = require("Quest/Client/Q19050ClientConfig")

local subIDs = Q19050ClientConfig.SubIDs
local npcs = Q19050ClientConfig.Npcs

function Q1905002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19050"):RequestInteraction(npcs.Coop_BeidouData.alias)
    self:DestroySelf()
end

function Q1905002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905002Trigger
