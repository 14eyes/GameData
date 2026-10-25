require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7403302Trigger = class("Q7403302Trigger", GadgetActorProxy)
Q7403302Trigger.defaultAlias = "Q7403302Trigger"
local Q74033ClientConfig = require("Quest/Client/Q74033ClientConfig")

local this
local subIDs = Q74033ClientConfig.SubIDs
local npcs = Q74033ClientConfig.Npcs
local points = Q74033ClientConfig.Points

function Q7403302Trigger:OnPostDataPrepare()
    print("[MainId: 74033][Trigger: Q7403302Trigger] OnPostDataPrepare")
    this = self
end

function Q7403302Trigger:OnPostComponentPrepare()
    print("[MainId: 74033][Trigger: Q7403302Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7403302Trigger:TriggerIn()
    print("[MainId: 74033][Trigger: Q7403302Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403302)
    this:DestroySelf()
end

function Q7403302Trigger:PreTriggerIn()
    print("[MainId: 74033][Trigger: Q7403302Trigger] PreTriggerIn")
end

function Q7403302Trigger:LightUpTriggerIn()
    print("[MainId: 74033][Trigger: Q7403302Trigger] LightUpTriggerIn")
end

function Q7403302Trigger:TriggerOut()
    print("[MainId: 74033][Trigger: Q7403302Trigger] TriggerOut")
end

return Q7403302Trigger
