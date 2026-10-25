require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75030Trigger = class("Q75030Trigger", GadgetActorProxy)
Q75030Trigger.defaultAlias = "Q75030Trigger"
local Q75030ClientConfig = require("Quest/Client/Q75030ClientConfig")

local this
local subIDs = Q75030ClientConfig.SubIDs
local npcs = Q75030ClientConfig.Npcs
local datas = Q75030ClientConfig.Datas

function Q75030Trigger:OnPostDataPrepare()
    print("[MainId: 75030][Trigger: Q75030Trigger] OnPostDataPrepare")
    this = self
end

function Q75030Trigger:OnPostComponentPrepare()
    print("[MainId: 75030][Trigger: Q75030Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3.6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75030)
end

function Q75030Trigger:TriggerIn()
    print("[MainId: 75030][Trigger: Q75030Trigger] TriggerIn")
    actorMgr:GetActor("75030"):RequestInteraction(npcs.Npc6137Data.alias, "", true)
    this:DestroySelf()
end

function Q75030Trigger:PreTriggerIn()
    print("[MainId: 75030][Trigger: Q75030Trigger] PreTriggerIn")
end

function Q75030Trigger:LightUpTriggerIn()
    print("[MainId: 75030][Trigger: Q75030Trigger] LightUpTriggerIn")
end

function Q75030Trigger:TriggerOut()
    print("[MainId: 75030][Trigger: Q75030Trigger] TriggerOut")
end

return Q75030Trigger
