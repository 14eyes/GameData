require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318802Trigger = class("Q7318802Trigger", GadgetActorProxy)
Q7318802Trigger.defaultAlias = "Q7318802Trigger"
local Q73188ClientConfig = require("Quest/Client/Q73188ClientConfig")

local subIDs = Q73188ClientConfig.SubIDs
local npcs = Q73188ClientConfig.Npcs

function Q7318802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7318802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318802Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318802)
    self:DestroySelf()
end

function Q7318802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7318802Trigger
