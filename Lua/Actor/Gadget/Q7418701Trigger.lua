require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418701Trigger = class("Q7418701Trigger", GadgetActorProxy)
Q7418701Trigger.defaultAlias = "Q7418701Trigger"
local Q74187ClientConfig = require("Quest/Client/Q74187ClientConfig")

local this
local subIDs = Q74187ClientConfig.SubIDs
local npcs = Q74187ClientConfig.Npcs

function Q7418701Trigger:OnPostDataPrepare()
    print("[MainId: 74187][Trigger: Q7418701Trigger] OnPostDataPrepare")
    this = self
end

function Q7418701Trigger:OnPostComponentPrepare()
    print("[MainId: 74187][Trigger: Q7418701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7418701Trigger:TriggerIn()
    print("[MainId: 74187][Trigger: Q7418701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7418701)
    this:DestroySelf()
end

function Q7418701Trigger:PreTriggerIn()
    print("[MainId: 74187][Trigger: Q7418701Trigger] PreTriggerIn")
end

function Q7418701Trigger:LightUpTriggerIn()
    print("[MainId: 74187][Trigger: Q7418701Trigger] LightUpTriggerIn")
end

function Q7418701Trigger:TriggerOut()
    print("[MainId: 74187][Trigger: Q7418701Trigger] TriggerOut")
end

return Q7418701Trigger
