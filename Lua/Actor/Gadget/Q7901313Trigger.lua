require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7901313Trigger = class("Q7901313Trigger", GadgetActorProxy)
Q7901313Trigger.defaultAlias = "Q7901313Trigger"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q7901313Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7901313Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7901313Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7901313)
    self:DestroySelf()
end

function Q7901313Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7901313Trigger
