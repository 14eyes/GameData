require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401807Trigger = class("Q7401807Trigger", GadgetActorProxy)
Q7401807Trigger.defaultAlias = "Q7401807Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401807Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401807Trigger] OnPostDataPrepare")
    this = self
end

function Q7401807Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401807Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7.00365, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401807Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401807Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401808)
    this:DestroySelf()
end

function Q7401807Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401807Trigger] PreTriggerIn")
end

function Q7401807Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401807Trigger] LightUpTriggerIn")
end

function Q7401807Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401807Trigger] TriggerOut")
end

return Q7401807Trigger
