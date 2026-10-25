require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904112Trigger = class("Q7904112Trigger", GadgetActorProxy)
Q7904112Trigger.defaultAlias = "Q7904112Trigger"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904112Trigger:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904112Trigger] OnPostDataPrepare")
    this = self
end

function Q7904112Trigger:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904112Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904112Trigger:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7904112)
    this:DestroySelf()
end

function Q7904112Trigger:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger] PreTriggerIn")
end

function Q7904112Trigger:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger] LightUpTriggerIn")
end

function Q7904112Trigger:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904112Trigger] TriggerOut")
end

return Q7904112Trigger
