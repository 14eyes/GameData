require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507019Trigger = class("Q7507019Trigger", GadgetActorProxy)
Q7507019Trigger.defaultAlias = "Q7507019Trigger"
local Q75070ClientConfig = require("Quest/Client/Q75070ClientConfig")

local this
local subIDs = Q75070ClientConfig.SubIDs
local npcs = Q75070ClientConfig.Npcs
local points = Q75070ClientConfig.Points

function Q7507019Trigger:OnPostDataPrepare()
    print("[MainId: 75070][Trigger: Q7507019Trigger] OnPostDataPrepare")
    this = self
end

function Q7507019Trigger:OnPostComponentPrepare()
    print("[MainId: 75070][Trigger: Q7507019Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75070)
end

function Q7507019Trigger:TriggerIn()
    print("[MainId: 75070][Trigger: Q7507019Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7507019)
    this:DestroySelf()
end

function Q7507019Trigger:PreTriggerIn()
    print("[MainId: 75070][Trigger: Q7507019Trigger] PreTriggerIn")
end

function Q7507019Trigger:LightUpTriggerIn()
    print("[MainId: 75070][Trigger: Q7507019Trigger] LightUpTriggerIn")
end

function Q7507019Trigger:TriggerOut()
    print("[MainId: 75070][Trigger: Q7507019Trigger] TriggerOut")
end

return Q7507019Trigger
