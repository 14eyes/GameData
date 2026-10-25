require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904102Trigger = class("Q7904102Trigger", GadgetActorProxy)
Q7904102Trigger.defaultAlias = "Q7904102Trigger"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904102Trigger:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904102Trigger] OnPostDataPrepare")
    this = self
end

function Q7904102Trigger:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904102Trigger:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904102Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7904102)
    this:DestroySelf()
end

function Q7904102Trigger:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904102Trigger] PreTriggerIn")
end

function Q7904102Trigger:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904102Trigger] LightUpTriggerIn")
end

function Q7904102Trigger:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904102Trigger] TriggerOut")
end

return Q7904102Trigger
