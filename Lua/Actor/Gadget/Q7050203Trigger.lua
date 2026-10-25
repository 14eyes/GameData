require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7050203Trigger = class("Q7050203Trigger", GadgetActorProxy)
Q7050203Trigger.defaultAlias = "Q7050203Trigger"
local Q70502ClientConfig = require("Quest/Client/Q70502ClientConfig")

local subIDs = Q70502ClientConfig.SubIDs
local npcs = Q70502ClientConfig.Npcs

function Q7050203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7050203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7050203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70502"):RequestInteraction(npcs.Npc30114Data.alias)
    self:DestroySelf()
end

function Q7050203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7050203Trigger
