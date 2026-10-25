require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500105Trigger = class("Q7500105Trigger", GadgetActorProxy)
Q7500105Trigger.defaultAlias = "Q7500105Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500105Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500105Trigger] OnPostDataPrepare")
    this = self
end

function Q7500105Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(61.42278, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500105Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500105Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500105Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500105Trigger] PreTriggerIn")
end

function Q7500105Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500105Trigger] LightUpTriggerIn")
end

function Q7500105Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500105Trigger] TriggerOut")
end

return Q7500105Trigger
