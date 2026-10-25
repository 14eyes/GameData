require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70530Trigger = class("Q70530Trigger", GadgetActorProxy)
Q70530Trigger.defaultAlias = "Q70530Trigger"
local Q70530ClientConfig = require("Quest/Client/Q70530ClientConfig")

local this
local subIDs = Q70530ClientConfig.SubIDs
local npcs = Q70530ClientConfig.Npcs

function Q70530Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70530Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70530Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7053001)
    this:DestroySelf()
end

function Q70530Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q70530Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q70530Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70530Trigger
