require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917105Trigger = class("Q1917105Trigger", GadgetActorProxy)
Q1917105Trigger.defaultAlias = "Q1917105Trigger"
local Q19171ClientConfig = require("Quest/Client/Q19171ClientConfig")

local this
local subIDs = Q19171ClientConfig.SubIDs
local npcs = Q19171ClientConfig.Npcs
local datas = Q19171ClientConfig.Datas

function Q1917105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1917105Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917105)
    this:DestroySelf()
end

function Q1917105Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1917105Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1917105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917105Trigger
