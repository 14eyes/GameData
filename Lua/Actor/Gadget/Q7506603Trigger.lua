require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506603Trigger = class("Q7506603Trigger", GadgetActorProxy)
Q7506603Trigger.defaultAlias = "Q7506603Trigger"
local Q75066ClientConfig = require("Quest/Client/Q75066ClientConfig")

local this
local subIDs = Q75066ClientConfig.SubIDs
local npcs = Q75066ClientConfig.Npcs
local points = Q75066ClientConfig.Points

function Q7506603Trigger:OnPostDataPrepare()
    print("[MainId: 75066][Trigger: Q7506603Trigger] OnPostDataPrepare")
    this = self
end

function Q7506603Trigger:OnPostComponentPrepare()
    print("[MainId: 75066][Trigger: Q7506603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75066)
end

function Q7506603Trigger:TriggerIn()
    print("[MainId: 75066][Trigger: Q7506603Trigger] TriggerIn")
end

function Q7506603Trigger:PreTriggerIn()
    print("[MainId: 75066][Trigger: Q7506603Trigger] PreTriggerIn")
end

function Q7506603Trigger:LightUpTriggerIn()
    print("[MainId: 75066][Trigger: Q7506603Trigger] LightUpTriggerIn")
end

function Q7506603Trigger:TriggerOut()
    print("[MainId: 75066][Trigger: Q7506603Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506603)
    this:DestroySelf()
end

return Q7506603Trigger
