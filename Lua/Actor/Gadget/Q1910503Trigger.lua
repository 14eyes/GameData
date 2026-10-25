require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910503Trigger = class("Q1910503Trigger", GadgetActorProxy)
Q1910503Trigger.defaultAlias = "Q1910503Trigger"
local Q19105ClientConfig = require("Quest/Client/Q19105ClientConfig")

local subIDs = Q19105ClientConfig.SubIDs
local npcs = Q19105ClientConfig.Npcs

function Q1910503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19105"):RequestInteraction(npcs.Npc153901Data.alias)
    self:DestroySelf()
end

function Q1910503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910503Trigger
