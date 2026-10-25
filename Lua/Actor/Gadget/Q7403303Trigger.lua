require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7403303Trigger = class("Q7403303Trigger", GadgetActorProxy)
Q7403303Trigger.defaultAlias = "Q7403303Trigger"
local Q74033ClientConfig = require("Quest/Client/Q74033ClientConfig")

local this
local subIDs = Q74033ClientConfig.SubIDs
local npcs = Q74033ClientConfig.Npcs
local points = Q74033ClientConfig.Points

function Q7403303Trigger:OnPostDataPrepare()
    print("[MainId: 74033][Trigger: Q7403303Trigger] OnPostDataPrepare")
    this = self
end

function Q7403303Trigger:OnPostComponentPrepare()
    print("[MainId: 74033][Trigger: Q7403303Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7403303Trigger:TriggerIn()
    print("[MainId: 74033][Trigger: Q7403303Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7403303)
    this:DestroySelf()
end

function Q7403303Trigger:PreTriggerIn()
    print("[MainId: 74033][Trigger: Q7403303Trigger] PreTriggerIn")
end

function Q7403303Trigger:LightUpTriggerIn()
    print("[MainId: 74033][Trigger: Q7403303Trigger] LightUpTriggerIn")
end

function Q7403303Trigger:TriggerOut()
    print("[MainId: 74033][Trigger: Q7403303Trigger] TriggerOut")
end

return Q7403303Trigger
