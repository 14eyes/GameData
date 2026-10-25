require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905003Trigger = class("Q1905003Trigger", GadgetActorProxy)
Q1905003Trigger.defaultAlias = "Q1905003Trigger"
local Q19050ClientConfig = require("Quest/Client/Q19050ClientConfig")

local subIDs = Q19050ClientConfig.SubIDs
local npcs = Q19050ClientConfig.Npcs

function Q1905003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905003Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19050"):RequestInteraction(npcs.Npc2433Data.alias)
    self:DestroySelf()
end

function Q1905003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905003Trigger
