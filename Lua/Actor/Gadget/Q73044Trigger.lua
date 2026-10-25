require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73044Trigger = class("Q73044Trigger", GadgetActorProxy)
Q73044Trigger.defaultAlias = "Q73044Trigger"
local Q73044ClientConfig = require("Quest/Client/Q73044ClientConfig")

local subIDs = Q73044ClientConfig.SubIDs
local npcs = Q73044ClientConfig.Npcs

function Q73044Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73044Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73044Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304403)
    self:DestroySelf()
end

function Q73044Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73044Trigger
