require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q803Trigger = class("Q803Trigger", GadgetActorProxy)
Q803Trigger.defaultAlias = "Q803Trigger"
local Q803ClientConfig = require("Quest/Client/Q803ClientConfig")

local this
local subIDs = Q803ClientConfig.SubIDs
local npcs = Q803ClientConfig.Npcs
local datas = Q803ClientConfig.Datas

function Q803Trigger:OnPostDataPrepare()
    print("[MainId: 803][Trigger: Q803Trigger] OnPostDataPrepare")
    this = self
end

function Q803Trigger:OnPostComponentPrepare()
    print("[MainId: 803][Trigger: Q803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 803)
end

function Q803Trigger:TriggerIn()
    print("[MainId: 803][Trigger: Q803Trigger] TriggerIn")
    this:DestroySelf()
end

function Q803Trigger:PreTriggerIn()
    print("[MainId: 803][Trigger: Q803Trigger] PreTriggerIn")
end

function Q803Trigger:LightUpTriggerIn()
    print("[MainId: 803][Trigger: Q803Trigger] LightUpTriggerIn")
end

function Q803Trigger:TriggerOut()
    print("[MainId: 803][Trigger: Q803Trigger] TriggerOut")
end

return Q803Trigger
