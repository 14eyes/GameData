require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500006Trigger = class("Q7500006Trigger", GadgetActorProxy)
Q7500006Trigger.defaultAlias = "Q7500006Trigger"
local Q75000ClientConfig = require("Quest/Client/Q75000ClientConfig")

local this
local subIDs = Q75000ClientConfig.SubIDs
local npcs = Q75000ClientConfig.Npcs

function Q7500006Trigger:OnPostDataPrepare()
    print("[MainId: 75000][Trigger: Q7500006Trigger] OnPostDataPrepare")
    this = self
end

function Q7500006Trigger:OnPostComponentPrepare()
    print("[MainId: 75000][Trigger: Q7500006Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(80, 45.88995, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75000)
end

function Q7500006Trigger:TriggerIn()
    print("[MainId: 75000][Trigger: Q7500006Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500006Trigger:PreTriggerIn()
    print("[MainId: 75000][Trigger: Q7500006Trigger] PreTriggerIn")
end

function Q7500006Trigger:LightUpTriggerIn()
    print("[MainId: 75000][Trigger: Q7500006Trigger] LightUpTriggerIn")
end

function Q7500006Trigger:TriggerOut()
    print("[MainId: 75000][Trigger: Q7500006Trigger] TriggerOut")
end

return Q7500006Trigger
