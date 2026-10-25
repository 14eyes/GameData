require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19151Trigger = class("Q19151Trigger", GadgetActorProxy)
Q19151Trigger.defaultAlias = "Q19151Trigger"
local Q19151ClientConfig = require("Quest/Client/Q19151ClientConfig")

local this
local subIDs = Q19151ClientConfig.SubIDs
local npcs = Q19151ClientConfig.Npcs

function Q19151Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19151Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19151Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1915104)
    this:DestroySelf()
end

function Q19151Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19151Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19151Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19151Trigger
