require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19160Trigger = class("Q19160Trigger", GadgetActorProxy)
Q19160Trigger.defaultAlias = "Q19160Trigger"
local Q19160ClientConfig = require("Quest/Client/Q19160ClientConfig")

local this
local subIDs = Q19160ClientConfig.SubIDs
local npcs = Q19160ClientConfig.Npcs

function Q19160Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19160Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19160Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1916001)
    this:DestroySelf()
end

function Q19160Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19160Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19160Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19160Trigger
