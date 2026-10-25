require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902011Trigger = class("Q7902011Trigger", GadgetActorProxy)
Q7902011Trigger.defaultAlias = "Q7902011Trigger"
local Q79020ClientConfig = require("Quest/Client/Q79020ClientConfig")

local subIDs = Q79020ClientConfig.SubIDs
local npcs = Q79020ClientConfig.Npcs

function Q7902011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902011Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902010)
    self:DestroySelf()
end

function Q7902011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7902011Trigger
