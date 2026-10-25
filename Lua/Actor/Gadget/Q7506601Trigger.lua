require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506601Trigger = class("Q7506601Trigger", GadgetActorProxy)
Q7506601Trigger.defaultAlias = "Q7506601Trigger"
local Q75066ClientConfig = require("Quest/Client/Q75066ClientConfig")

local this
local subIDs = Q75066ClientConfig.SubIDs
local npcs = Q75066ClientConfig.Npcs
local points = Q75066ClientConfig.Points

function Q7506601Trigger:OnPostDataPrepare()
    print("[MainId: 75066][Trigger: Q7506601Trigger] OnPostDataPrepare")
    this = self
end

function Q7506601Trigger:OnPostComponentPrepare()
    print("[MainId: 75066][Trigger: Q7506601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75066)
end

function Q7506601Trigger:TriggerIn()
    print("[MainId: 75066][Trigger: Q7506601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506601)
    this:DestroySelf()
end

function Q7506601Trigger:PreTriggerIn()
    print("[MainId: 75066][Trigger: Q7506601Trigger] PreTriggerIn")
end

function Q7506601Trigger:LightUpTriggerIn()
    print("[MainId: 75066][Trigger: Q7506601Trigger] LightUpTriggerIn")
end

function Q7506601Trigger:TriggerOut()
    print("[MainId: 75066][Trigger: Q7506601Trigger] TriggerOut")
end

return Q7506601Trigger
