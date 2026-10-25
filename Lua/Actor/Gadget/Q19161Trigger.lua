require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19161Trigger = class("Q19161Trigger", GadgetActorProxy)
Q19161Trigger.defaultAlias = "Q19161Trigger"
local Q19161ClientConfig = require("Quest/Client/Q19161ClientConfig")

local this
local subIDs = Q19161ClientConfig.SubIDs
local npcs = Q19161ClientConfig.Npcs
local datas = Q19161ClientConfig.Datas

function Q19161Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19161Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19161Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1916101)
    this:DestroySelf()
end

function Q19161Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19161Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19161Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19161Trigger
