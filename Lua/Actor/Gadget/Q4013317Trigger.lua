require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013317Trigger = class("Q4013317Trigger", GadgetActorProxy)
Q4013317Trigger.defaultAlias = "Q4013317Trigger"
local Q40133ClientConfig = require("Quest/Client/Q40133ClientConfig")

local this
local subIDs = Q40133ClientConfig.SubIDs
local npcs = Q40133ClientConfig.Npcs
local points = Q40133ClientConfig.Points
local datas = Q40133ClientConfig.Datas

function Q4013317Trigger:OnPostDataPrepare()
    print("[MainId: 40133][Trigger: Q4013317Trigger] OnPostDataPrepare")
    this = self
end

function Q4013317Trigger:OnPostComponentPrepare()
    print("[MainId: 40133][Trigger: Q4013317Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013317Trigger:TriggerIn()
    print("[MainId: 40133][Trigger: Q4013317Trigger] TriggerIn")
    actorMgr:GetActor("40133"):RequestInteraction(npcs.Npc1081Data.alias, "", true)
    this:DestroySelf()
end

function Q4013317Trigger:PreTriggerIn()
    print("[MainId: 40133][Trigger: Q4013317Trigger] PreTriggerIn")
end

function Q4013317Trigger:LightUpTriggerIn()
    print("[MainId: 40133][Trigger: Q4013317Trigger] LightUpTriggerIn")
end

function Q4013317Trigger:TriggerOut()
    print("[MainId: 40133][Trigger: Q4013317Trigger] TriggerOut")
end

return Q4013317Trigger
