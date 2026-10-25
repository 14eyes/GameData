require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507018Trigger = class("Q7507018Trigger", GadgetActorProxy)
Q7507018Trigger.defaultAlias = "Q7507018Trigger"
local Q75070ClientConfig = require("Quest/Client/Q75070ClientConfig")

local this
local subIDs = Q75070ClientConfig.SubIDs
local npcs = Q75070ClientConfig.Npcs
local points = Q75070ClientConfig.Points

function Q7507018Trigger:OnPostDataPrepare()
    print("[MainId: 75070][Trigger: Q7507018Trigger] OnPostDataPrepare")
    this = self
end

function Q7507018Trigger:OnPostComponentPrepare()
    print("[MainId: 75070][Trigger: Q7507018Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75070)
end

function Q7507018Trigger:TriggerIn()
    print("[MainId: 75070][Trigger: Q7507018Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7507018)
    this:DestroySelf()
end

function Q7507018Trigger:PreTriggerIn()
    print("[MainId: 75070][Trigger: Q7507018Trigger] PreTriggerIn")
end

function Q7507018Trigger:LightUpTriggerIn()
    print("[MainId: 75070][Trigger: Q7507018Trigger] LightUpTriggerIn")
end

function Q7507018Trigger:TriggerOut()
    print("[MainId: 75070][Trigger: Q7507018Trigger] TriggerOut")
end

return Q7507018Trigger
