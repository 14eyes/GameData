require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7080302Trigger = class("Q7080302Trigger", GadgetActorProxy)
Q7080302Trigger.defaultAlias = "Q7080302Trigger"
local Q70803ClientConfig = require("Quest/Client/Q70803ClientConfig")

local subIDs = Q70803ClientConfig.SubIDs
local npcs = Q70803ClientConfig.Npcs

function Q7080302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7080302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7080302Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70803"):RequestInteraction(npcs.Npc1668Data.alias)
    self:DestroySelf()
end

function Q7080302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7080302Trigger
