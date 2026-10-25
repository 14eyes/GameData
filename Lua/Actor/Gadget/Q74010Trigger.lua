require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74010Trigger = class("Q74010Trigger", GadgetActorProxy)
Q74010Trigger.defaultAlias = "Q74010Trigger"
local Q74010ClientConfig = require("Quest/Client/Q74010ClientConfig")

local this
local subIDs = Q74010ClientConfig.SubIDs
local npcs = Q74010ClientConfig.Npcs
local points = Q74010ClientConfig.Points

function Q74010Trigger:OnPostDataPrepare()
    print("[MainId: 74010][Trigger: Q74010Trigger] OnPostDataPrepare")
    this = self
end

function Q74010Trigger:OnPostComponentPrepare()
    print("[MainId: 74010][Trigger: Q74010Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74010Trigger:TriggerIn()
    print("[MainId: 74010][Trigger: Q74010Trigger] TriggerIn")
    actorMgr:GetActor("74010"):RequestInteraction(npcs.Npc5315Data.alias)
    this:DestroySelf()
end

function Q74010Trigger:PreTriggerIn()
    print("[MainId: 74010][Trigger: Q74010Trigger] PreTriggerIn")
end

function Q74010Trigger:LightUpTriggerIn()
    print("[MainId: 74010][Trigger: Q74010Trigger] LightUpTriggerIn")
end

function Q74010Trigger:TriggerOut()
    print("[MainId: 74010][Trigger: Q74010Trigger] TriggerOut")
end

return Q74010Trigger
