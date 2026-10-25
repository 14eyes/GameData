require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101802Trigger = class("Q1101802Trigger", GadgetActorProxy)
Q1101802Trigger.defaultAlias = "Q1101802Trigger"
local Q11018ClientConfig = require("Quest/Client/Q11018ClientConfig")

local subIDs = Q11018ClientConfig.SubIDs
local npcs = Q11018ClientConfig.Npcs

function Q1101802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1101802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101802Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1101802)
    self:DestroySelf()
end

function Q1101802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101802Trigger
