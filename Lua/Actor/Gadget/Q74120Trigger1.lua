require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74120Trigger1 = class("Q74120Trigger1", GadgetActorProxy)
Q74120Trigger1.defaultAlias = "Q74120Trigger1"
local Q74120ClientConfig = require("Quest/Client/Q74120ClientConfig")

local this
local subIDs = Q74120ClientConfig.SubIDs
local npcs = Q74120ClientConfig.Npcs
local points = Q74120ClientConfig.Points

function Q74120Trigger1:OnPostDataPrepare()
    print("[MainId: 74120][Trigger: Q74120Trigger1] OnPostDataPrepare")
    this = self
end

function Q74120Trigger1:OnPostComponentPrepare()
    print("[MainId: 74120][Trigger: Q74120Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74120Trigger1:TriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger1] TriggerIn")
    actorMgr:GetActor("74120"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q74120Trigger1:PreTriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger1] PreTriggerIn")
end

function Q74120Trigger1:LightUpTriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger1] LightUpTriggerIn")
end

function Q74120Trigger1:TriggerOut()
    print("[MainId: 74120][Trigger: Q74120Trigger1] TriggerOut")
end

return Q74120Trigger1
