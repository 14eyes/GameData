require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506901Trigger = class("Q7506901Trigger", GadgetActorProxy)
Q7506901Trigger.defaultAlias = "Q7506901Trigger"
local Q75069ClientConfig = require("Quest/Client/Q75069ClientConfig")

local this
local subIDs = Q75069ClientConfig.SubIDs
local npcs = Q75069ClientConfig.Npcs
local points = Q75069ClientConfig.Points

function Q7506901Trigger:OnPostDataPrepare()
    print("[MainId: 75069][Trigger: Q7506901Trigger] OnPostDataPrepare")
    this = self
end

function Q7506901Trigger:OnPostComponentPrepare()
    print("[MainId: 75069][Trigger: Q7506901Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75069)
end

function Q7506901Trigger:TriggerIn()
    print("[MainId: 75069][Trigger: Q7506901Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506901)
    this:DestroySelf()
end

function Q7506901Trigger:PreTriggerIn()
    print("[MainId: 75069][Trigger: Q7506901Trigger] PreTriggerIn")
end

function Q7506901Trigger:LightUpTriggerIn()
    print("[MainId: 75069][Trigger: Q7506901Trigger] LightUpTriggerIn")
end

function Q7506901Trigger:TriggerOut()
    print("[MainId: 75069][Trigger: Q7506901Trigger] TriggerOut")
end

return Q7506901Trigger
