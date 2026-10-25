require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7901303Trigger = class("Q7901303Trigger", GadgetActorProxy)
Q7901303Trigger.defaultAlias = "Q7901303Trigger"
local Q79013ClientConfig = require("Quest/Client/Q79013ClientConfig")

local subIDs = Q79013ClientConfig.SubIDs
local npcs = Q79013ClientConfig.Npcs

function Q7901303Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7901303Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7901303Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7901303)
    self:DestroySelf()
end

function Q7901303Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7901303Trigger
