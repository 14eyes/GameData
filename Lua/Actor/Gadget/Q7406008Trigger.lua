require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406008Trigger = class("Q7406008Trigger", GadgetActorProxy)
Q7406008Trigger.defaultAlias = "Q7406008Trigger"
local Q74060ClientConfig = require("Quest/Client/Q74060ClientConfig")

local this
local subIDs = Q74060ClientConfig.SubIDs
local npcs = Q74060ClientConfig.Npcs
local points = Q74060ClientConfig.Points

function Q7406008Trigger:OnPostDataPrepare()
    print("[MainId: 74060][Trigger: Q7406008Trigger] OnPostDataPrepare")
    this = self
end

function Q7406008Trigger:OnPostComponentPrepare()
    print("[MainId: 74060][Trigger: Q7406008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406008Trigger:TriggerIn()
    print("[MainId: 74060][Trigger: Q7406008Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406008)
    this:DestroySelf()
end

function Q7406008Trigger:PreTriggerIn()
    print("[MainId: 74060][Trigger: Q7406008Trigger] PreTriggerIn")
end

function Q7406008Trigger:LightUpTriggerIn()
    print("[MainId: 74060][Trigger: Q7406008Trigger] LightUpTriggerIn")
end

function Q7406008Trigger:TriggerOut()
    print("[MainId: 74060][Trigger: Q7406008Trigger] TriggerOut")
end

return Q7406008Trigger
