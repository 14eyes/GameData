require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413403Trigger = class("Q7413403Trigger", GadgetActorProxy)
Q7413403Trigger.defaultAlias = "Q7413403Trigger"
local Q74134ClientConfig = require("Quest/Client/Q74134ClientConfig")

local this
local subIDs = Q74134ClientConfig.SubIDs
local npcs = Q74134ClientConfig.Npcs
local points = Q74134ClientConfig.Points

function Q7413403Trigger:OnPostDataPrepare()
    print("[MainId: 74134][Trigger: Q7413403Trigger] OnPostDataPrepare")
    this = self
end

function Q7413403Trigger:OnPostComponentPrepare()
    print("[MainId: 74134][Trigger: Q7413403Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413403Trigger:TriggerIn()
    print("[MainId: 74134][Trigger: Q7413403Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7413403)
    this:DestroySelf()
end

function Q7413403Trigger:PreTriggerIn()
    print("[MainId: 74134][Trigger: Q7413403Trigger] PreTriggerIn")
end

function Q7413403Trigger:LightUpTriggerIn()
    print("[MainId: 74134][Trigger: Q7413403Trigger] LightUpTriggerIn")
end

function Q7413403Trigger:TriggerOut()
    print("[MainId: 74134][Trigger: Q7413403Trigger] TriggerOut")
end

return Q7413403Trigger
