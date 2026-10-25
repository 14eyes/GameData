require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7308408Trigger = class("Q7308408Trigger", GadgetActorProxy)
Q7308408Trigger.defaultAlias = "Q7308408Trigger"
local Q73084ClientConfig = require("Quest/Client/Q73084ClientConfig")

local subIDs = Q73084ClientConfig.SubIDs
local npcs = Q73084ClientConfig.Npcs

function Q7308408Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7308408Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7308408Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7308408)
    self:DestroySelf()
end

function Q7308408Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7308408Trigger
