require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904104Trigger1 = class("Q7904104Trigger1", GadgetActorProxy)
Q7904104Trigger1.defaultAlias = "Q7904104Trigger1"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904104Trigger1:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] OnPostDataPrepare")
    this = self
end

function Q7904104Trigger1:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904104Trigger1:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7904104)
    this:DestroySelf()
end

function Q7904104Trigger1:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] PreTriggerIn")
end

function Q7904104Trigger1:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] LightUpTriggerIn")
end

function Q7904104Trigger1:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904104Trigger1] TriggerOut")
end

return Q7904104Trigger1
