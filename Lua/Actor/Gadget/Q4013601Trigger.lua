require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013601Trigger = class("Q4013601Trigger", GadgetActorProxy)
Q4013601Trigger.defaultAlias = "Q4013601Trigger"
local Q40136ClientConfig = require("Quest/Client/Q40136ClientConfig")

local this
local subIDs = Q40136ClientConfig.SubIDs
local npcs = Q40136ClientConfig.Npcs
local points = Q40136ClientConfig.Points

function Q4013601Trigger:OnPostDataPrepare()
    print("[MainId: 40136][Trigger: Q4013601Trigger] OnPostDataPrepare")
    this = self
end

function Q4013601Trigger:OnPostComponentPrepare()
    print("[MainId: 40136][Trigger: Q4013601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013601Trigger:TriggerIn()
    print("[MainId: 40136][Trigger: Q4013601Trigger] TriggerIn")
    actorMgr:GetActor("40136"):RequestInteraction(npcs.Npc1073Data.alias, "", true)
    this:DestroySelf()
end

function Q4013601Trigger:PreTriggerIn()
    print("[MainId: 40136][Trigger: Q4013601Trigger] PreTriggerIn")
end

function Q4013601Trigger:LightUpTriggerIn()
    print("[MainId: 40136][Trigger: Q4013601Trigger] LightUpTriggerIn")
end

function Q4013601Trigger:TriggerOut()
    print("[MainId: 40136][Trigger: Q4013601Trigger] TriggerOut")
end

return Q4013601Trigger
