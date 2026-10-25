require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902502Trigger = class("Q7902502Trigger", GadgetActorProxy)
Q7902502Trigger.defaultAlias = "Q7902502Trigger"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs

function Q7902502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902502Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902502)
    self:DestroySelf()
end

function Q7902502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7902502Trigger
