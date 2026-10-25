require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400506Trigger = class("Q2400506Trigger", GadgetActorProxy)
Q2400506Trigger.defaultAlias = "Q2400506Trigger"
local Q24005ClientConfig = require("Quest/Client/Q24005ClientConfig")

local this
local subIDs = Q24005ClientConfig.SubIDs
local npcs = Q24005ClientConfig.Npcs
local points = Q24005ClientConfig.Points

function Q2400506Trigger:OnPostDataPrepare()
    print("[MainId: 24005][Trigger: Q2400506Trigger] OnPostDataPrepare")
    this = self
end

function Q2400506Trigger:OnPostComponentPrepare()
    print("[MainId: 24005][Trigger: Q2400506Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400506Trigger:TriggerIn()
    print("[MainId: 24005][Trigger: Q2400506Trigger] TriggerIn")
    actorMgr:GetActor("24005"):RequestInteraction(npcs.Npc5057Data.alias)
    this:DestroySelf()
end

function Q2400506Trigger:PreTriggerIn()
    print("[MainId: 24005][Trigger: Q2400506Trigger] PreTriggerIn")
end

function Q2400506Trigger:LightUpTriggerIn()
    print("[MainId: 24005][Trigger: Q2400506Trigger] LightUpTriggerIn")
end

function Q2400506Trigger:TriggerOut()
    print("[MainId: 24005][Trigger: Q2400506Trigger] TriggerOut")
end

return Q2400506Trigger
