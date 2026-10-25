require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406001Trigger = class("Q7406001Trigger", GadgetActorProxy)
Q7406001Trigger.defaultAlias = "Q7406001Trigger"
local Q74060ClientConfig = require("Quest/Client/Q74060ClientConfig")

local this
local subIDs = Q74060ClientConfig.SubIDs
local npcs = Q74060ClientConfig.Npcs
local points = Q74060ClientConfig.Points

function Q7406001Trigger:OnPostDataPrepare()
    print("[MainId: 74060][Trigger: Q7406001Trigger] OnPostDataPrepare")
    this = self
end

function Q7406001Trigger:OnPostComponentPrepare()
    print("[MainId: 74060][Trigger: Q7406001Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406001Trigger:TriggerIn()
    print("[MainId: 74060][Trigger: Q7406001Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406001)
    this:DestroySelf()
end

function Q7406001Trigger:PreTriggerIn()
    print("[MainId: 74060][Trigger: Q7406001Trigger] PreTriggerIn")
end

function Q7406001Trigger:LightUpTriggerIn()
    print("[MainId: 74060][Trigger: Q7406001Trigger] LightUpTriggerIn")
end

function Q7406001Trigger:TriggerOut()
    print("[MainId: 74060][Trigger: Q7406001Trigger] TriggerOut")
end

return Q7406001Trigger
