require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500115Trigger = class("Q7500115Trigger", GadgetActorProxy)
Q7500115Trigger.defaultAlias = "Q7500115Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500115Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500115Trigger] OnPostDataPrepare")
    this = self
end

function Q7500115Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500115Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(83.2433, 63.24486, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500115Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500115Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500115)
    this:DestroySelf()
end

function Q7500115Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500115Trigger] PreTriggerIn")
end

function Q7500115Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500115Trigger] LightUpTriggerIn")
end

function Q7500115Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500115Trigger] TriggerOut")
end

return Q7500115Trigger
