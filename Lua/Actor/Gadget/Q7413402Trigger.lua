require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413402Trigger = class("Q7413402Trigger", GadgetActorProxy)
Q7413402Trigger.defaultAlias = "Q7413402Trigger"
local Q74134ClientConfig = require("Quest/Client/Q74134ClientConfig")

local this
local subIDs = Q74134ClientConfig.SubIDs
local npcs = Q74134ClientConfig.Npcs
local points = Q74134ClientConfig.Points

function Q7413402Trigger:OnPostDataPrepare()
    print("[MainId: 74134][Trigger: Q7413402Trigger] OnPostDataPrepare")
    this = self
end

function Q7413402Trigger:OnPostComponentPrepare()
    print("[MainId: 74134][Trigger: Q7413402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413402Trigger:TriggerIn()
    print("[MainId: 74134][Trigger: Q7413402Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413402)
    this:DestroySelf()
end

function Q7413402Trigger:PreTriggerIn()
    print("[MainId: 74134][Trigger: Q7413402Trigger] PreTriggerIn")
end

function Q7413402Trigger:LightUpTriggerIn()
    print("[MainId: 74134][Trigger: Q7413402Trigger] LightUpTriggerIn")
end

function Q7413402Trigger:TriggerOut()
    print("[MainId: 74134][Trigger: Q7413402Trigger] TriggerOut")
end

return Q7413402Trigger
