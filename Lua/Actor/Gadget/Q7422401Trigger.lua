require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422401Trigger = class("Q7422401Trigger", GadgetActorProxy)
Q7422401Trigger.defaultAlias = "Q7422401Trigger"
local Q74224ClientConfig = require("Quest/Client/Q74224ClientConfig")

local this
local subIDs = Q74224ClientConfig.SubIDs
local npcs = Q74224ClientConfig.Npcs
local points = Q74224ClientConfig.Points

function Q7422401Trigger:OnPostDataPrepare()
    print("[MainId: 74224][Trigger: Q7422401Trigger] OnPostDataPrepare")
    this = self
end

function Q7422401Trigger:OnPostComponentPrepare()
    print("[MainId: 74224][Trigger: Q7422401Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74224)
end

function Q7422401Trigger:TriggerIn()
    print("[MainId: 74224][Trigger: Q7422401Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7422401)
    this:DestroySelf()
end

function Q7422401Trigger:PreTriggerIn()
    print("[MainId: 74224][Trigger: Q7422401Trigger] PreTriggerIn")
end

function Q7422401Trigger:LightUpTriggerIn()
    print("[MainId: 74224][Trigger: Q7422401Trigger] LightUpTriggerIn")
end

function Q7422401Trigger:TriggerOut()
    print("[MainId: 74224][Trigger: Q7422401Trigger] TriggerOut")
end

return Q7422401Trigger
