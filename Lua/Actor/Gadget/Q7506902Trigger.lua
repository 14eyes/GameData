require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506902Trigger = class("Q7506902Trigger", GadgetActorProxy)
Q7506902Trigger.defaultAlias = "Q7506902Trigger"
local Q75069ClientConfig = require("Quest/Client/Q75069ClientConfig")

local this
local subIDs = Q75069ClientConfig.SubIDs
local npcs = Q75069ClientConfig.Npcs
local points = Q75069ClientConfig.Points

function Q7506902Trigger:OnPostDataPrepare()
    print("[MainId: 75069][Trigger: Q7506902Trigger] OnPostDataPrepare")
    this = self
end

function Q7506902Trigger:OnPostComponentPrepare()
    print("[MainId: 75069][Trigger: Q7506902Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75069)
end

function Q7506902Trigger:TriggerIn()
    print("[MainId: 75069][Trigger: Q7506902Trigger] TriggerIn")
end

function Q7506902Trigger:PreTriggerIn()
    print("[MainId: 75069][Trigger: Q7506902Trigger] PreTriggerIn")
end

function Q7506902Trigger:LightUpTriggerIn()
    print("[MainId: 75069][Trigger: Q7506902Trigger] LightUpTriggerIn")
end

function Q7506902Trigger:TriggerOut()
    print("[MainId: 75069][Trigger: Q7506902Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506902)
    this:DestroySelf()
end

return Q7506902Trigger
