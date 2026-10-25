require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013301Trigger = class("Q4013301Trigger", GadgetActorProxy)
Q4013301Trigger.defaultAlias = "Q4013301Trigger"
local Q40133ClientConfig = require("Quest/Client/Q40133ClientConfig")

local this
local subIDs = Q40133ClientConfig.SubIDs
local npcs = Q40133ClientConfig.Npcs
local points = Q40133ClientConfig.Points
local datas = Q40133ClientConfig.Datas

function Q4013301Trigger:OnPostDataPrepare()
    print("[MainId: 40133][Trigger: Q4013301Trigger] OnPostDataPrepare")
    this = self
end

function Q4013301Trigger:OnPostComponentPrepare()
    print("[MainId: 40133][Trigger: Q4013301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013301Trigger:TriggerIn()
    print("[MainId: 40133][Trigger: Q4013301Trigger] TriggerIn")
    actorMgr:GetActor("40133"):RequestInteraction(npcs.Npc1035Data.alias, "", true)
    this:DestroySelf()
end

function Q4013301Trigger:PreTriggerIn()
    print("[MainId: 40133][Trigger: Q4013301Trigger] PreTriggerIn")
end

function Q4013301Trigger:LightUpTriggerIn()
    print("[MainId: 40133][Trigger: Q4013301Trigger] LightUpTriggerIn")
end

function Q4013301Trigger:TriggerOut()
    print("[MainId: 40133][Trigger: Q4013301Trigger] TriggerOut")
end

return Q4013301Trigger
