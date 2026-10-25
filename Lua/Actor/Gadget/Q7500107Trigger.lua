require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500107Trigger = class("Q7500107Trigger", GadgetActorProxy)
Q7500107Trigger.defaultAlias = "Q7500107Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500107Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500107Trigger] OnPostDataPrepare")
    this = self
end

function Q7500107Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500107Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500107Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500107Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500107Trigger] PreTriggerIn")
end

function Q7500107Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500107Trigger] LightUpTriggerIn")
end

function Q7500107Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500107Trigger] TriggerOut")
end

return Q7500107Trigger
