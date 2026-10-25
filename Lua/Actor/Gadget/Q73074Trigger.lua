require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73074Trigger = class("Q73074Trigger", GadgetActorProxy)
Q73074Trigger.defaultAlias = "Q73074Trigger"
local Q73074ClientConfig = require("Quest/Client/Q73074ClientConfig")

local subIDs = Q73074ClientConfig.SubIDs
local npcs = Q73074ClientConfig.Npcs

function Q73074Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73074Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73074Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7307405)
    self:DestroySelf()
end

function Q73074Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73074Trigger
