require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904119Trigger = class("Q7904119Trigger", GadgetActorProxy)
Q7904119Trigger.defaultAlias = "Q7904119Trigger"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904119Trigger:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904119Trigger] OnPostDataPrepare")
    this = self
end

function Q7904119Trigger:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904119Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904119Trigger:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904119Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7904119)
    this:DestroySelf()
end

function Q7904119Trigger:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904119Trigger] PreTriggerIn")
end

function Q7904119Trigger:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904119Trigger] LightUpTriggerIn")
end

function Q7904119Trigger:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904119Trigger] TriggerOut")
end

return Q7904119Trigger
