require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74222Trigger = class("Q74222Trigger", GadgetActorProxy)
Q74222Trigger.defaultAlias = "Q74222Trigger"
local Q74222ClientConfig = require("Quest/Client/Q74222ClientConfig")

local this
local subIDs = Q74222ClientConfig.SubIDs
local npcs = Q74222ClientConfig.Npcs
local points = Q74222ClientConfig.Points

function Q74222Trigger:OnPostDataPrepare()
    print("[MainId: 74222][Trigger: Q74222Trigger] OnPostDataPrepare")
    this = self
end

function Q74222Trigger:OnPostComponentPrepare()
    print("[MainId: 74222][Trigger: Q74222Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74222)
end

function Q74222Trigger:TriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger] TriggerIn")
    actorMgr:GetActor("74222"):RequestInteraction(npcs.Npc5337Data.alias, "", true)
    this:DestroySelf()
end

function Q74222Trigger:PreTriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger] PreTriggerIn")
end

function Q74222Trigger:LightUpTriggerIn()
    print("[MainId: 74222][Trigger: Q74222Trigger] LightUpTriggerIn")
end

function Q74222Trigger:TriggerOut()
    print("[MainId: 74222][Trigger: Q74222Trigger] TriggerOut")
end

return Q74222Trigger
