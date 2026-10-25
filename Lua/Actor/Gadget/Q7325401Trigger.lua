require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325401Trigger = class("Q7325401Trigger", GadgetActorProxy)
Q7325401Trigger.defaultAlias = "Q7325401Trigger"
local Q73254ClientConfig = require("Quest/Client/Q73254ClientConfig")

local this
local subIDs = Q73254ClientConfig.SubIDs

function Q7325401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325401Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325401)
    this:DestroySelf()
end

function Q7325401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325401Trigger
