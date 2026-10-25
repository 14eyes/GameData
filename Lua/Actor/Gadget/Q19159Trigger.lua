require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19159Trigger = class("Q19159Trigger", GadgetActorProxy)
Q19159Trigger.defaultAlias = "Q19159Trigger"
local Q19159ClientConfig = require("Quest/Client/Q19159ClientConfig")

local this
local subIDs = Q19159ClientConfig.SubIDs
local npcs = Q19159ClientConfig.Npcs

function Q19159Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19159Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19159Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1915901)
    this:DestroySelf()
end

function Q19159Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19159Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19159Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19159Trigger
