require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500302FailTrigger = class("Q7500302FailTrigger", GadgetActorProxy)
Q7500302FailTrigger.defaultAlias = "Q7500302FailTrigger"
local Q75003ClientConfig = require("Quest/Client/Q75003ClientConfig")

local this
local subIDs = Q75003ClientConfig.SubIDs
local npcs = Q75003ClientConfig.Npcs

function Q7500302FailTrigger:OnPostDataPrepare()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] OnPostDataPrepare")
    this = self
end

function Q7500302FailTrigger:OnPostComponentPrepare()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(250, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75003)
end

function Q7500302FailTrigger:TriggerIn()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] TriggerIn")
end

function Q7500302FailTrigger:PreTriggerIn()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] PreTriggerIn")
end

function Q7500302FailTrigger:LightUpTriggerIn()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] LightUpTriggerIn")
end

function Q7500302FailTrigger:TriggerOut()
    print("[MainId: 75003][Trigger: Q7500302FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7500302)
    this:DestroySelf()
end

return Q7500302FailTrigger
