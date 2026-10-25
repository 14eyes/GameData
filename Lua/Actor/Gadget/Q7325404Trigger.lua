require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325404Trigger = class("Q7325404Trigger", GadgetActorProxy)
Q7325404Trigger.defaultAlias = "Q7325404Trigger"
local Q73254ClientConfig = require("Quest/Client/Q73254ClientConfig")

local this
local subIDs = Q73254ClientConfig.SubIDs

function Q7325404Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325404Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325404Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325404)
    this:DestroySelf()
end

function Q7325404Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325404Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325404Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325404Trigger
