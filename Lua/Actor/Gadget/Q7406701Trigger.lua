require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406701Trigger = class("Q7406701Trigger", GadgetActorProxy)
Q7406701Trigger.defaultAlias = "Q7406701Trigger"
local Q74067ClientConfig = require("Quest/Client/Q74067ClientConfig")

local this
local subIDs = Q74067ClientConfig.SubIDs
local npcs = Q74067ClientConfig.Npcs
local points = Q74067ClientConfig.Points

function Q7406701Trigger:OnPostDataPrepare()
    print("[MainId: 74067][Trigger: Q7406701Trigger] OnPostDataPrepare")
    this = self
end

function Q7406701Trigger:OnPostComponentPrepare()
    print("[MainId: 74067][Trigger: Q7406701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406701Trigger:TriggerIn()
    print("[MainId: 74067][Trigger: Q7406701Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406701)
    this:DestroySelf()
end

function Q7406701Trigger:PreTriggerIn()
    print("[MainId: 74067][Trigger: Q7406701Trigger] PreTriggerIn")
end

function Q7406701Trigger:LightUpTriggerIn()
    print("[MainId: 74067][Trigger: Q7406701Trigger] LightUpTriggerIn")
end

function Q7406701Trigger:TriggerOut()
    print("[MainId: 74067][Trigger: Q7406701Trigger] TriggerOut")
end

return Q7406701Trigger
