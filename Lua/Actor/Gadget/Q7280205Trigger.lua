require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7280205Trigger = class("Q7280205Trigger", GadgetActorProxy)
Q7280205Trigger.defaultAlias = "Q7280205Trigger"
local Q72802ClientConfig = require("Quest/Client/Q72802ClientConfig")

local subIDs = Q72802ClientConfig.SubIDs
local npcs = Q72802ClientConfig.Npcs

function Q7280205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7280205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7280205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72802"):RequestInteraction(npcs.Npc20307Data.alias)
    self:DestroySelf()
end

function Q7280205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7280205Trigger
