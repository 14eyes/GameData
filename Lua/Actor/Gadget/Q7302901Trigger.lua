require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302901Trigger = class("Q7302901Trigger", GadgetActorProxy)
Q7302901Trigger.defaultAlias = "Q7302901Trigger"
local Q73029ClientConfig = require("Quest/Client/Q73029ClientConfig")

local subIDs = Q73029ClientConfig.SubIDs
local npcs = Q73029ClientConfig.Npcs

function Q7302901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302901Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73029"):RequestInteraction(npcs.Npc20909Data.alias)
    self:DestroySelf()
end

function Q7302901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302901Trigger
