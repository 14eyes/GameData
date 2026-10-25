require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7308419Trigger = class("Q7308419Trigger", GadgetActorProxy)
Q7308419Trigger.defaultAlias = "Q7308419Trigger"
local Q73084ClientConfig = require("Quest/Client/Q73084ClientConfig")

local subIDs = Q73084ClientConfig.SubIDs
local npcs = Q73084ClientConfig.Npcs

function Q7308419Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7308419Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7308419Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7308419)
    self:DestroySelf()
end

function Q7308419Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7308419Trigger
