require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73024Trigger = class("Q73024Trigger", GadgetActorProxy)
Q73024Trigger.defaultAlias = "Q73024Trigger"
local Q73024ClientConfig = require("Quest/Client/Q73024ClientConfig")

local subIDs = Q73024ClientConfig.SubIDs
local npcs = Q73024ClientConfig.Npcs

function Q73024Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73024Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73024Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302401)
    self:DestroySelf()
end

function Q73024Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73024Trigger
