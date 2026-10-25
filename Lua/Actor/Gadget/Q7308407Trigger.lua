require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7308407Trigger = class("Q7308407Trigger", GadgetActorProxy)
Q7308407Trigger.defaultAlias = "Q7308407Trigger"
local Q73084ClientConfig = require("Quest/Client/Q73084ClientConfig")

local subIDs = Q73084ClientConfig.SubIDs
local npcs = Q73084ClientConfig.Npcs

function Q7308407Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7308407Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7308407Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7308407)
    self:DestroySelf()
end

function Q7308407Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7308407Trigger
