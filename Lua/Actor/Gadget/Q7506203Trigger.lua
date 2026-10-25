require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506203Trigger = class("Q7506203Trigger", GadgetActorProxy)
Q7506203Trigger.defaultAlias = "Q7506203Trigger"
local Q75062ClientConfig = require("Quest/Client/Q75062ClientConfig")

local this
local subIDs = Q75062ClientConfig.SubIDs
local npcs = Q75062ClientConfig.Npcs
local points = Q75062ClientConfig.Points

function Q7506203Trigger:OnPostDataPrepare()
    print("[MainId: 75062][Trigger: Q7506203Trigger] OnPostDataPrepare")
    this = self
end

function Q7506203Trigger:OnPostComponentPrepare()
    print("[MainId: 75062][Trigger: Q7506203Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75062)
end

function Q7506203Trigger:TriggerIn()
    print("[MainId: 75062][Trigger: Q7506203Trigger] TriggerIn")
end

function Q7506203Trigger:PreTriggerIn()
    print("[MainId: 75062][Trigger: Q7506203Trigger] PreTriggerIn")
end

function Q7506203Trigger:LightUpTriggerIn()
    print("[MainId: 75062][Trigger: Q7506203Trigger] LightUpTriggerIn")
end

function Q7506203Trigger:TriggerOut()
    print("[MainId: 75062][Trigger: Q7506203Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7506203)
    this:DestroySelf()
end

return Q7506203Trigger
