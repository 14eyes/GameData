require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79031Trigger = class("Q79031Trigger", GadgetActorProxy)
Q79031Trigger.defaultAlias = "Q79031Trigger"
local Q79031ClientConfig = require("Quest/Client/Q79031ClientConfig")

local subIDs = Q79031ClientConfig.SubIDs
local npcs = Q79031ClientConfig.Npcs

function Q79031Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79031Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79031Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7903101)
    self:DestroySelf()
end

function Q79031Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79031Trigger
