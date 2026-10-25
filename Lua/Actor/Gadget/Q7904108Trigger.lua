require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904108Trigger = class("Q7904108Trigger", GadgetActorProxy)
Q7904108Trigger.defaultAlias = "Q7904108Trigger"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904108Trigger:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904108Trigger] OnPostDataPrepare")
    this = self
end

function Q7904108Trigger:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904108Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904108Trigger:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904108Trigger] TriggerIn")
end

function Q7904108Trigger:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904108Trigger] PreTriggerIn")
    actorUtils.FinishQuestID(false, 7904108)
    this:DestroySelf()
end

function Q7904108Trigger:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904108Trigger] LightUpTriggerIn")
end

function Q7904108Trigger:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904108Trigger] TriggerOut")
end

return Q7904108Trigger
