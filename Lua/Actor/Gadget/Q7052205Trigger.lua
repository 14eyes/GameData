require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7052205Trigger = class("Q7052205Trigger", GadgetActorProxy)
Q7052205Trigger.defaultAlias = "Q7052205Trigger"
local Q70522ClientConfig = require("Quest/Client/Q70522ClientConfig")

local subIDs = Q70522ClientConfig.SubIDs
local npcs = Q70522ClientConfig.Npcs

function Q7052205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7052205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7052205Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7052205)
    self:DestroySelf()
end

function Q7052205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7052205Trigger
