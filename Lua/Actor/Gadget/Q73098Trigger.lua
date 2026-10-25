require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73098Trigger = class("Q73098Trigger", GadgetActorProxy)
Q73098Trigger.defaultAlias = "Q73098Trigger"
local Q73098ClientConfig = require("Quest/Client/Q73098ClientConfig")

local subIDs = Q73098ClientConfig.SubIDs
local npcs = Q73098ClientConfig.Npcs

function Q73098Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73098Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73098Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73098"):RequestInteraction(npcs.Npc4186Data.alias)
    self:DestroySelf()
end

function Q73098Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73098Trigger
