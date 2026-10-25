require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406022Trigger = class("Q7406022Trigger", GadgetActorProxy)
Q7406022Trigger.defaultAlias = "Q7406022Trigger"
local Q74060ClientConfig = require("Quest/Client/Q74060ClientConfig")

local this
local subIDs = Q74060ClientConfig.SubIDs
local npcs = Q74060ClientConfig.Npcs
local points = Q74060ClientConfig.Points

function Q7406022Trigger:OnPostDataPrepare()
    print("[MainId: 74060][Trigger: Q7406022Trigger] OnPostDataPrepare")
    this = self
end

function Q7406022Trigger:OnPostComponentPrepare()
    print("[MainId: 74060][Trigger: Q7406022Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406022Trigger:TriggerIn()
    print("[MainId: 74060][Trigger: Q7406022Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406022)
    this:DestroySelf()
end

function Q7406022Trigger:PreTriggerIn()
    print("[MainId: 74060][Trigger: Q7406022Trigger] PreTriggerIn")
end

function Q7406022Trigger:LightUpTriggerIn()
    print("[MainId: 74060][Trigger: Q7406022Trigger] LightUpTriggerIn")
end

function Q7406022Trigger:TriggerOut()
    print("[MainId: 74060][Trigger: Q7406022Trigger] TriggerOut")
end

return Q7406022Trigger
