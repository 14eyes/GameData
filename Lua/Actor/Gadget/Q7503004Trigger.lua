require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503004Trigger = class("Q7503004Trigger", GadgetActorProxy)
Q7503004Trigger.defaultAlias = "Q7503004Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q7503004Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q7503004Trigger] OnPostDataPrepare")
    this = self
end

function Q7503004Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q7503004Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q7503004Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q7503004Trigger] TriggerIn")
    actorMgr:GetActor("75030"):RequestInteraction(npcs.Npc6137Data.alias, "", true)
    this:DestroySelf()
end

function Q7503004Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q7503004Trigger] PreTriggerIn")
end

function Q7503004Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q7503004Trigger] LightUpTriggerIn")
end

function Q7503004Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q7503004Trigger] TriggerOut")
end

return Q7503004Trigger
