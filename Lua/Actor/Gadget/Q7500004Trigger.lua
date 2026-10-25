require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500004Trigger = class("Q7500004Trigger", GadgetActorProxy)
Q7500004Trigger.defaultAlias = "Q7500004Trigger"
local Q75000ClientConfig = require("Quest/Client/Q75000ClientConfig")

local this
local subIDs = Q75000ClientConfig.SubIDs
local npcs = Q75000ClientConfig.Npcs

function Q7500004Trigger:OnPostDataPrepare()
    print("[MainId: 75000][Trigger: Q7500004Trigger] OnPostDataPrepare")
    this = self
end

function Q7500004Trigger:OnPostComponentPrepare()
    print("[MainId: 75000][Trigger: Q7500004Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 45, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75000)
end

function Q7500004Trigger:TriggerIn()
    print("[MainId: 75000][Trigger: Q7500004Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500004Trigger:PreTriggerIn()
    print("[MainId: 75000][Trigger: Q7500004Trigger] PreTriggerIn")
end

function Q7500004Trigger:LightUpTriggerIn()
    print("[MainId: 75000][Trigger: Q7500004Trigger] LightUpTriggerIn")
end

function Q7500004Trigger:TriggerOut()
    print("[MainId: 75000][Trigger: Q7500004Trigger] TriggerOut")
end

return Q7500004Trigger
