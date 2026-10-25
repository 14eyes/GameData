require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74046Trigger = class("Q74046Trigger", GadgetActorProxy)
Q74046Trigger.defaultAlias = "Q74046Trigger"
local Q74046ClientConfig = require("Quest/Client/Q74046ClientConfig")

local this
local subIDs = Q74046ClientConfig.SubIDs
local npcs = Q74046ClientConfig.Npcs
local datas = Q74046ClientConfig.Datas

function Q74046Trigger:OnPostDataPrepare()
    print("[MainId: 74046][Trigger: Q74046Trigger] OnPostDataPrepare")
    this = self
end

function Q74046Trigger:OnPostComponentPrepare()
    print("[MainId: 74046][Trigger: Q74046Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74046Trigger:TriggerIn()
    print("[MainId: 74046][Trigger: Q74046Trigger] TriggerIn")
    this:DestroySelf()
end

function Q74046Trigger:PreTriggerIn()
    print("[MainId: 74046][Trigger: Q74046Trigger] PreTriggerIn")
end

function Q74046Trigger:LightUpTriggerIn()
    print("[MainId: 74046][Trigger: Q74046Trigger] LightUpTriggerIn")
end

function Q74046Trigger:TriggerOut()
    print("[MainId: 74046][Trigger: Q74046Trigger] TriggerOut")
end

return Q74046Trigger
