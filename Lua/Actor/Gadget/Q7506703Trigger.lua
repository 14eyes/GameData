require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506703Trigger = class("Q7506703Trigger", GadgetActorProxy)
Q7506703Trigger.defaultAlias = "Q7506703Trigger"
local Q75067ClientConfig = require("Quest/Client/Q75067ClientConfig")

local this
local subIDs = Q75067ClientConfig.SubIDs
local npcs = Q75067ClientConfig.Npcs
local points = Q75067ClientConfig.Points

function Q7506703Trigger:OnPostDataPrepare()
    print("[MainId: 75067][Trigger: Q7506703Trigger] OnPostDataPrepare")
    this = self
end

function Q7506703Trigger:OnPostComponentPrepare()
    print("[MainId: 75067][Trigger: Q7506703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75067)
end

function Q7506703Trigger:TriggerIn()
    print("[MainId: 75067][Trigger: Q7506703Trigger] TriggerIn")
end

function Q7506703Trigger:PreTriggerIn()
    print("[MainId: 75067][Trigger: Q7506703Trigger] PreTriggerIn")
end

function Q7506703Trigger:LightUpTriggerIn()
    print("[MainId: 75067][Trigger: Q7506703Trigger] LightUpTriggerIn")
end

function Q7506703Trigger:TriggerOut()
    print("[MainId: 75067][Trigger: Q7506703Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506703)
    this:DestroySelf()
end

return Q7506703Trigger
