require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506701Trigger = class("Q7506701Trigger", GadgetActorProxy)
Q7506701Trigger.defaultAlias = "Q7506701Trigger"
local Q75067ClientConfig = require("Quest/Client/Q75067ClientConfig")

local this
local subIDs = Q75067ClientConfig.SubIDs
local npcs = Q75067ClientConfig.Npcs
local points = Q75067ClientConfig.Points

function Q7506701Trigger:OnPostDataPrepare()
    print("[MainId: 75067][Trigger: Q7506701Trigger] OnPostDataPrepare")
    this = self
end

function Q7506701Trigger:OnPostComponentPrepare()
    print("[MainId: 75067][Trigger: Q7506701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75067)
end

function Q7506701Trigger:TriggerIn()
    print("[MainId: 75067][Trigger: Q7506701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506701)
    this:DestroySelf()
end

function Q7506701Trigger:PreTriggerIn()
    print("[MainId: 75067][Trigger: Q7506701Trigger] PreTriggerIn")
end

function Q7506701Trigger:LightUpTriggerIn()
    print("[MainId: 75067][Trigger: Q7506701Trigger] LightUpTriggerIn")
end

function Q7506701Trigger:TriggerOut()
    print("[MainId: 75067][Trigger: Q7506701Trigger] TriggerOut")
end

return Q7506701Trigger
