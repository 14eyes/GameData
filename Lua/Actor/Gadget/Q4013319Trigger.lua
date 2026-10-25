require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013319Trigger = class("Q4013319Trigger", GadgetActorProxy)
Q4013319Trigger.defaultAlias = "Q4013319Trigger"
local Q40133ClientConfig = require("Quest/Client/Q40133ClientConfig")

local this
local subIDs = Q40133ClientConfig.SubIDs
local npcs = Q40133ClientConfig.Npcs
local points = Q40133ClientConfig.Points
local datas = Q40133ClientConfig.Datas

function Q4013319Trigger:OnPostDataPrepare()
    print("[MainId: 40133][Trigger: Q4013319Trigger] OnPostDataPrepare")
    this = self
end

function Q4013319Trigger:OnPostComponentPrepare()
    print("[MainId: 40133][Trigger: Q4013319Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013319Trigger:TriggerIn()
    print("[MainId: 40133][Trigger: Q4013319Trigger] TriggerIn")
    actorMgr:GetActor("40133"):RequestInteraction(npcs.Npc1081Data.alias, "", true)
    this:DestroySelf()
end

function Q4013319Trigger:PreTriggerIn()
    print("[MainId: 40133][Trigger: Q4013319Trigger] PreTriggerIn")
end

function Q4013319Trigger:LightUpTriggerIn()
    print("[MainId: 40133][Trigger: Q4013319Trigger] LightUpTriggerIn")
end

function Q4013319Trigger:TriggerOut()
    print("[MainId: 40133][Trigger: Q4013319Trigger] TriggerOut")
end

return Q4013319Trigger
