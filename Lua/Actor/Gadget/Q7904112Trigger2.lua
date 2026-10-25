require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7904112Trigger2 = class("Q7904112Trigger2", GadgetActorProxy)
Q7904112Trigger2.defaultAlias = "Q7904112Trigger2"
local Q79041ClientConfig = require("Quest/Client/Q79041ClientConfig")

local this
local subIDs = Q79041ClientConfig.SubIDs
local npcs = Q79041ClientConfig.Npcs
local points = Q79041ClientConfig.Points

function Q7904112Trigger2:OnPostDataPrepare()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] OnPostDataPrepare")
    this = self
end

function Q7904112Trigger2:OnPostComponentPrepare()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7904112Trigger2:TriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7904112)
    this:DestroySelf()
end

function Q7904112Trigger2:PreTriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] PreTriggerIn")
end

function Q7904112Trigger2:LightUpTriggerIn()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] LightUpTriggerIn")
end

function Q7904112Trigger2:TriggerOut()
    print("[MainId: 79041][Trigger: Q7904112Trigger2] TriggerOut")
end

return Q7904112Trigger2
