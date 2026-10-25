require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74192paimon1Trigger = class("Q74192paimon1Trigger", GadgetActorProxy)
Q74192paimon1Trigger.defaultAlias = "Q74192paimon1Trigger"
local Q74192ClientConfig = require("Quest/Client/Q74192ClientConfig")

local this
local subIDs = Q74192ClientConfig.SubIDs
local npcs = Q74192ClientConfig.Npcs
local points = Q74192ClientConfig.Points

function Q74192paimon1Trigger:OnPostDataPrepare()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] OnPostDataPrepare")
    this = self
end

function Q74192paimon1Trigger:OnPostComponentPrepare()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(400, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74192paimon1Trigger:TriggerIn()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] TriggerIn")
    globalActor:DisablePaimonInProfilePage({3})
end

function Q74192paimon1Trigger:PreTriggerIn()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] PreTriggerIn")
end

function Q74192paimon1Trigger:LightUpTriggerIn()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] LightUpTriggerIn")
end

function Q74192paimon1Trigger:TriggerOut()
    print("[MainId: 74192][Trigger: Q74192paimon1Trigger] TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
end

return Q74192paimon1Trigger
