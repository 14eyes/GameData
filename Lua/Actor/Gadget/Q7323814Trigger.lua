require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323814Trigger = class("Q7323814Trigger", GadgetActorProxy)
Q7323814Trigger.defaultAlias = "Q7323814Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs

function Q7323814Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7323814Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323814Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323814)
    self:DestroySelf()
end

function Q7323814Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323814Trigger
