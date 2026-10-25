require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74172Trigger = class("Q74172Trigger", GadgetActorProxy)
Q74172Trigger.defaultAlias = "Q74172Trigger"
local Q74172ClientConfig = require("Quest/Client/Q74172ClientConfig")

local this
local subIDs = Q74172ClientConfig.SubIDs
local npcs = Q74172ClientConfig.Npcs
local points = Q74172ClientConfig.Points

function Q74172Trigger:OnPostDataPrepare()
    print("[MainId: 74172][Trigger: Q74172Trigger] OnPostDataPrepare")
    this = self
end

function Q74172Trigger:OnPostComponentPrepare()
    print("[MainId: 74172][Trigger: Q74172Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74172Trigger:TriggerIn()
    print("[MainId: 74172][Trigger: Q74172Trigger] TriggerIn")
end

function Q74172Trigger:PreTriggerIn()
    print("[MainId: 74172][Trigger: Q74172Trigger] PreTriggerIn")
end

function Q74172Trigger:LightUpTriggerIn()
    print("[MainId: 74172][Trigger: Q74172Trigger] LightUpTriggerIn")
end

function Q74172Trigger:TriggerOut()
    print("[MainId: 74172][Trigger: Q74172Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7417201)
    this:DestroySelf()
end

return Q74172Trigger
