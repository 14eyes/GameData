require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506905Trigger = class("Q7506905Trigger", GadgetActorProxy)
Q7506905Trigger.defaultAlias = "Q7506905Trigger"
local Q75069ClientConfig = require("Quest/Client/Q75069ClientConfig")

local this
local subIDs = Q75069ClientConfig.SubIDs
local npcs = Q75069ClientConfig.Npcs
local points = Q75069ClientConfig.Points

function Q7506905Trigger:OnPostDataPrepare()
    print("[MainId: 75069][Trigger: Q7506905Trigger] OnPostDataPrepare")
    this = self
end

function Q7506905Trigger:OnPostComponentPrepare()
    print("[MainId: 75069][Trigger: Q7506905Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75069)
end

function Q7506905Trigger:TriggerIn()
    print("[MainId: 75069][Trigger: Q7506905Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506905)
    this:DestroySelf()
end

function Q7506905Trigger:PreTriggerIn()
    print("[MainId: 75069][Trigger: Q7506905Trigger] PreTriggerIn")
end

function Q7506905Trigger:LightUpTriggerIn()
    print("[MainId: 75069][Trigger: Q7506905Trigger] LightUpTriggerIn")
end

function Q7506905Trigger:TriggerOut()
    print("[MainId: 75069][Trigger: Q7506905Trigger] TriggerOut")
end

return Q7506905Trigger
