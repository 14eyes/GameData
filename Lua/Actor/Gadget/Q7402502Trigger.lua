require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402502Trigger = class("Q7402502Trigger", GadgetActorProxy)
Q7402502Trigger.defaultAlias = "Q7402502Trigger"
local Q74025ClientConfig = require("Quest/Client/Q74025ClientConfig")

local this
local subIDs = Q74025ClientConfig.SubIDs
local npcs = Q74025ClientConfig.Npcs
local points = Q74025ClientConfig.Points
local datas = Q74025ClientConfig.Datas

function Q7402502Trigger:OnPostDataPrepare()
    print("[MainId: 74025][Trigger: Q7402502Trigger] OnPostDataPrepare")
    this = self
end

function Q7402502Trigger:OnPostComponentPrepare()
    print("[MainId: 74025][Trigger: Q7402502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402502Trigger:TriggerIn()
    print("[MainId: 74025][Trigger: Q7402502Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7402502Trigger:PreTriggerIn()
    print("[MainId: 74025][Trigger: Q7402502Trigger] PreTriggerIn")
end

function Q7402502Trigger:LightUpTriggerIn()
    print("[MainId: 74025][Trigger: Q7402502Trigger] LightUpTriggerIn")
end

function Q7402502Trigger:TriggerOut()
    print("[MainId: 74025][Trigger: Q7402502Trigger] TriggerOut")
end

return Q7402502Trigger
