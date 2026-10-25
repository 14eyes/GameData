require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406024Trigger = class("Q7406024Trigger", GadgetActorProxy)
Q7406024Trigger.defaultAlias = "Q7406024Trigger"
local Q74060ClientConfig = require("Quest/Client/Q74060ClientConfig")

local this
local subIDs = Q74060ClientConfig.SubIDs
local npcs = Q74060ClientConfig.Npcs
local points = Q74060ClientConfig.Points

function Q7406024Trigger:OnPostDataPrepare()
    print("[MainId: 74060][Trigger: Q7406024Trigger] OnPostDataPrepare")
    this = self
end

function Q7406024Trigger:OnPostComponentPrepare()
    print("[MainId: 74060][Trigger: Q7406024Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406024Trigger:TriggerIn()
    print("[MainId: 74060][Trigger: Q7406024Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406024)
    this:DestroySelf()
end

function Q7406024Trigger:PreTriggerIn()
    print("[MainId: 74060][Trigger: Q7406024Trigger] PreTriggerIn")
end

function Q7406024Trigger:LightUpTriggerIn()
    print("[MainId: 74060][Trigger: Q7406024Trigger] LightUpTriggerIn")
end

function Q7406024Trigger:TriggerOut()
    print("[MainId: 74060][Trigger: Q7406024Trigger] TriggerOut")
end

return Q7406024Trigger
