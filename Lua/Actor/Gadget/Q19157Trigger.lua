require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19157Trigger = class("Q19157Trigger", GadgetActorProxy)
Q19157Trigger.defaultAlias = "Q19157Trigger"
local Q19157ClientConfig = require("Quest/Client/Q19157ClientConfig")

local this
local subIDs = Q19157ClientConfig.SubIDs
local npcs = Q19157ClientConfig.Npcs
local points = Q19157ClientConfig.Points

function Q19157Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19157Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19157Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1915701)
    this:DestroySelf()
end

function Q19157Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19157Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorUtils.FinishQuestID(false, 1915701)
end

function Q19157Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19157Trigger
