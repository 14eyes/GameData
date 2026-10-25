require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74510Trigger = class("Q74510Trigger", GadgetActorProxy)
Q74510Trigger.defaultAlias = "Q74510Trigger"
local Q74510ClientConfig = require("Quest/Client/Q74510ClientConfig")

local this
local subIDs = Q74510ClientConfig.SubIDs
local npcs = Q74510ClientConfig.Npcs

function Q74510Trigger:OnPostDataPrepare()
    print("[MainId: 74510][Trigger: Q74510Trigger] OnPostDataPrepare")
    this = self
end

function Q74510Trigger:OnPostComponentPrepare()
    print("[MainId: 74510][Trigger: Q74510Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74510Trigger:TriggerIn()
    print("[MainId: 74510][Trigger: Q74510Trigger] TriggerIn")
    actorMgr:GetActor("74510"):RequestInteractionForceAlias(npcs.Npc30419Data.alias, "", true)
    this:DestroySelf()
end

function Q74510Trigger:PreTriggerIn()
    print("[MainId: 74510][Trigger: Q74510Trigger] PreTriggerIn")
end

function Q74510Trigger:LightUpTriggerIn()
    print("[MainId: 74510][Trigger: Q74510Trigger] LightUpTriggerIn")
end

function Q74510Trigger:TriggerOut()
    print("[MainId: 74510][Trigger: Q74510Trigger] TriggerOut")
end

return Q74510Trigger
