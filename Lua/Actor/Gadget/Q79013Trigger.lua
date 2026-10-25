require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79013Trigger = class("Q79013Trigger", GadgetActorProxy)
Q79013Trigger.defaultAlias = "Q79013Trigger"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q79013Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79013Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79013Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7901303)
    self:DestroySelf()
end

function Q79013Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79013Trigger
