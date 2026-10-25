require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73071Trigger = class("Q73071Trigger", GadgetActorProxy)
Q73071Trigger.defaultAlias = "Q73071Trigger"
local Q73071ClientConfig = require("Quest/Client/Q73071ClientConfig")

local subIDs = Q73071ClientConfig.SubIDs
local npcs = Q73071ClientConfig.Npcs

function Q73071Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73071Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(27.21276, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73071Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7307106)
    self:DestroySelf()
end

function Q73071Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73071Trigger
