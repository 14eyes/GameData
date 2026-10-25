require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19058Trigger = class("Q19058Trigger", GadgetActorProxy)
Q19058Trigger.defaultAlias = "Q19058Trigger"
local Q19058ClientConfig = require("Quest/Client/Q19058ClientConfig")

local this
local subIDs = Q19058ClientConfig.SubIDs
local npcs = Q19058ClientConfig.Npcs
local points = Q19058ClientConfig.Points
local datas = Q19058ClientConfig.Datas

function Q19058Trigger:OnPostDataPrepare()
    print("[MainId: 19058][Trigger: Q19058Trigger] OnPostDataPrepare")
    this = self
end

function Q19058Trigger:OnPostComponentPrepare()
    print("[MainId: 19058][Trigger: Q19058Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19058Trigger:TriggerIn()
    print("[MainId: 19058][Trigger: Q19058Trigger] TriggerIn")
    this:DestroySelf()
end

function Q19058Trigger:PreTriggerIn()
    print("[MainId: 19058][Trigger: Q19058Trigger] PreTriggerIn")
end

function Q19058Trigger:LightUpTriggerIn()
    print("[MainId: 19058][Trigger: Q19058Trigger] LightUpTriggerIn")
end

function Q19058Trigger:TriggerOut()
    print("[MainId: 19058][Trigger: Q19058Trigger] TriggerOut")
end

return Q19058Trigger
