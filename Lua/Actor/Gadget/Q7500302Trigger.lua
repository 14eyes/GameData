require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500302Trigger = class("Q7500302Trigger", GadgetActorProxy)
Q7500302Trigger.defaultAlias = "Q7500302Trigger"
local Q75003ClientConfig = require("Quest/Client/Q75003ClientConfig")

local this
local subIDs = Q75003ClientConfig.SubIDs
local npcs = Q75003ClientConfig.Npcs

function Q7500302Trigger:OnPostDataPrepare()
    print("[MainId: 75003][Trigger: Q7500302Trigger] OnPostDataPrepare")
    this = self
end

function Q7500302Trigger:OnPostComponentPrepare()
    print("[MainId: 75003][Trigger: Q7500302Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75003)
end

function Q7500302Trigger:TriggerIn()
    print("[MainId: 75003][Trigger: Q7500302Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500302)
    this:DestroySelf()
end

function Q7500302Trigger:PreTriggerIn()
    print("[MainId: 75003][Trigger: Q7500302Trigger] PreTriggerIn")
end

function Q7500302Trigger:LightUpTriggerIn()
    print("[MainId: 75003][Trigger: Q7500302Trigger] LightUpTriggerIn")
end

function Q7500302Trigger:TriggerOut()
    print("[MainId: 75003][Trigger: Q7500302Trigger] TriggerOut")
end

return Q7500302Trigger
