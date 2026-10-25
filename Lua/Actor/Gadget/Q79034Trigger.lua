require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79034Trigger = class("Q79034Trigger", GadgetActorProxy)
Q79034Trigger.defaultAlias = "Q79034Trigger"
local Q79034ClientConfig = require("Quest/Client/Q79034ClientConfig")

local subIDs = Q79034ClientConfig.SubIDs
local npcs = Q79034ClientConfig.Npcs

function Q79034Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79034Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79034Trigger:TriggerIn()
    print("TriggerIn")
end

function Q79034Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7903401)
    self:DestroySelf()
end

return Q79034Trigger
