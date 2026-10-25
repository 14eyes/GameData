require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904125Trigger8 = class("Q7904125Trigger8", GadgetActorProxy)
Q7904125Trigger8.defaultAlias = "Q7904125Trigger8"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904125Trigger8:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] OnPostDataPrepare")
    this = self
end

function Q7904125Trigger8:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904125Trigger8:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] TriggerIn")
    actorUtils.FinishQuestID(false, 7904125)
    this:DestroySelf()
end

function Q7904125Trigger8:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] PreTriggerIn")
end

function Q7904125Trigger8:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] LightUpTriggerIn")
end

function Q7904125Trigger8:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904125Trigger8] TriggerOut")
end

return Q7904125Trigger8
