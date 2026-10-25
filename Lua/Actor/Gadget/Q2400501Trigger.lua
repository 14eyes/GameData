require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400501Trigger = class("Q2400501Trigger", GadgetActorProxy)
Q2400501Trigger.defaultAlias = "Q2400501Trigger"
local Q24005ClientConfig = require("Quest/Client/Q24005ClientConfig")

local this
local subIDs = Q24005ClientConfig.SubIDs
local npcs = Q24005ClientConfig.Npcs
local points = Q24005ClientConfig.Points

function Q2400501Trigger:OnPostDataPrepare()
    print("[MainId: 24005][Trigger: Q2400501Trigger] OnPostDataPrepare")
    this = self
end

function Q2400501Trigger:OnPostComponentPrepare()
    print("[MainId: 24005][Trigger: Q2400501Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400501Trigger:TriggerIn()
    print("[MainId: 24005][Trigger: Q2400501Trigger] TriggerIn")
    this:DestroySelf()
end

function Q2400501Trigger:PreTriggerIn()
    print("[MainId: 24005][Trigger: Q2400501Trigger] PreTriggerIn")
end

function Q2400501Trigger:LightUpTriggerIn()
    print("[MainId: 24005][Trigger: Q2400501Trigger] LightUpTriggerIn")
end

function Q2400501Trigger:TriggerOut()
    print("[MainId: 24005][Trigger: Q2400501Trigger] TriggerOut")
end

return Q2400501Trigger
