require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406703Trigger = class("Q7406703Trigger", GadgetActorProxy)
Q7406703Trigger.defaultAlias = "Q7406703Trigger"
local Q74067ClientConfig = require("Quest/Client/Q74067ClientConfig")

local this
local subIDs = Q74067ClientConfig.SubIDs
local npcs = Q74067ClientConfig.Npcs
local points = Q74067ClientConfig.Points

function Q7406703Trigger:OnPostDataPrepare()
    print("[MainId: 74067][Trigger: Q7406703Trigger] OnPostDataPrepare")
    this = self
end

function Q7406703Trigger:OnPostComponentPrepare()
    print("[MainId: 74067][Trigger: Q7406703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406703Trigger:TriggerIn()
    print("[MainId: 74067][Trigger: Q7406703Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406703)
    this:DestroySelf()
end

function Q7406703Trigger:PreTriggerIn()
    print("[MainId: 74067][Trigger: Q7406703Trigger] PreTriggerIn")
end

function Q7406703Trigger:LightUpTriggerIn()
    print("[MainId: 74067][Trigger: Q7406703Trigger] LightUpTriggerIn")
end

function Q7406703Trigger:TriggerOut()
    print("[MainId: 74067][Trigger: Q7406703Trigger] TriggerOut")
end

return Q7406703Trigger
