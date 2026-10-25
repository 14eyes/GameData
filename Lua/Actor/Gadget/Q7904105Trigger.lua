require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904105Trigger = class("Q7904105Trigger", GadgetActorProxy)
Q7904105Trigger.defaultAlias = "Q7904105Trigger"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904105Trigger:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904105Trigger] OnPostDataPrepare")
    this = self
end

function Q7904105Trigger:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904105Trigger:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904105Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7904105)
    this:DestroySelf()
end

function Q7904105Trigger:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904105Trigger] PreTriggerIn")
end

function Q7904105Trigger:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904105Trigger] LightUpTriggerIn")
end

function Q7904105Trigger:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904105Trigger] TriggerOut")
end

return Q7904105Trigger
