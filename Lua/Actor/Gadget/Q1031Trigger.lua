require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1031Trigger = class("Q1031Trigger", GadgetActorProxy)
Q1031Trigger.defaultAlias = "Q1031Trigger"
local Q1031ClientConfig = require("Quest/Client/Q1031ClientConfig")

local subIDs = Q1031ClientConfig.SubIDs
local npcs = Q1031ClientConfig.Npcs

function Q1031Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1031Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1031Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 103105)
    self:DestroySelf()
end

function Q1031Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1031Trigger
