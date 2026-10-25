require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19156Trigger = class("Q19156Trigger", GadgetActorProxy)
Q19156Trigger.defaultAlias = "Q19156Trigger"
local Q19156ClientConfig = require("Quest/Client/Q19156ClientConfig")

local this
local subIDs = Q19156ClientConfig.SubIDs
local npcs = Q19156ClientConfig.Npcs

function Q19156Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19156Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19156Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1915601)
    this:DestroySelf()
end

function Q19156Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19156Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19156Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19156Trigger
