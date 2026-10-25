require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904125Trigger5 = class("Q7904125Trigger5", GadgetActorProxy)
Q7904125Trigger5.defaultAlias = "Q7904125Trigger5"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904125Trigger5:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] OnPostDataPrepare")
    this = self
end

function Q7904125Trigger5:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904125Trigger5:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] TriggerIn")
    actorUtils.FinishQuestID(false, 7904125)
    this:DestroySelf()
end

function Q7904125Trigger5:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] PreTriggerIn")
end

function Q7904125Trigger5:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] LightUpTriggerIn")
end

function Q7904125Trigger5:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904125Trigger5] TriggerOut")
end

return Q7904125Trigger5
