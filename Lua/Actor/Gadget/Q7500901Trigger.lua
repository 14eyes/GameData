require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500901Trigger = class("Q7500901Trigger", GadgetActorProxy)
Q7500901Trigger.defaultAlias = "Q7500901Trigger"
local Q75009ClientConfig = require("Quest/Client/Q75009ClientConfig")

local this
local subIDs = Q75009ClientConfig.SubIDs
local npcs = Q75009ClientConfig.Npcs

function Q7500901Trigger:OnPostDataPrepare()
    print("[MainId: 75009][Trigger: Q7500901Trigger] OnPostDataPrepare")
    this = self
end

function Q7500901Trigger:OnPostComponentPrepare()
    print("[MainId: 75009][Trigger: Q7500901Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30.00294, 35.26653, 28.58531, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75009)
end

function Q7500901Trigger:TriggerIn()
    print("[MainId: 75009][Trigger: Q7500901Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7500901Trigger:PreTriggerIn()
    print("[MainId: 75009][Trigger: Q7500901Trigger] PreTriggerIn")
end

function Q7500901Trigger:LightUpTriggerIn()
    print("[MainId: 75009][Trigger: Q7500901Trigger] LightUpTriggerIn")
end

function Q7500901Trigger:TriggerOut()
    print("[MainId: 75009][Trigger: Q7500901Trigger] TriggerOut")
end

return Q7500901Trigger
