require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224113Trigger = class("Q7224113Trigger", GadgetActorProxy)
Q7224113Trigger.defaultAlias = "Q7224113Trigger"
local Q72241ClientConfig = require("Quest/Client/Q72241ClientConfig")

local subIDs = Q72241ClientConfig.SubIDs
local npcs = Q72241ClientConfig.Npcs

function Q7224113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11.38548, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224113Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72241"):FinishQuestID(false, 7224113)
    self:DestroySelf()
end

function Q7224113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224113Trigger
