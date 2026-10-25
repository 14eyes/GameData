require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406015Trigger = class("Q7406015Trigger", GadgetActorProxy)
Q7406015Trigger.defaultAlias = "Q7406015Trigger"
local Q74060ClientConfig = require("Quest/Client/Q74060ClientConfig")

local this
local subIDs = Q74060ClientConfig.SubIDs
local npcs = Q74060ClientConfig.Npcs
local points = Q74060ClientConfig.Points

function Q7406015Trigger:OnPostDataPrepare()
    print("[MainId: 74060][Trigger: Q7406015Trigger] OnPostDataPrepare")
    this = self
end

function Q7406015Trigger:OnPostComponentPrepare()
    print("[MainId: 74060][Trigger: Q7406015Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406015Trigger:TriggerIn()
    print("[MainId: 74060][Trigger: Q7406015Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406015)
    this:DestroySelf()
end

function Q7406015Trigger:PreTriggerIn()
    print("[MainId: 74060][Trigger: Q7406015Trigger] PreTriggerIn")
end

function Q7406015Trigger:LightUpTriggerIn()
    print("[MainId: 74060][Trigger: Q7406015Trigger] LightUpTriggerIn")
end

function Q7406015Trigger:TriggerOut()
    print("[MainId: 74060][Trigger: Q7406015Trigger] TriggerOut")
end

return Q7406015Trigger
