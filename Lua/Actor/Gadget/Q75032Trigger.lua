require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75032Trigger = class("Q75032Trigger", GadgetActorProxy)
Q75032Trigger.defaultAlias = "Q75032Trigger"
local Q75032ClientConfig = require("Quest/Client/Q75032ClientConfig")

local this
local subIDs = Q75032ClientConfig.SubIDs
local npcs = Q75032ClientConfig.Npcs
local datas = Q75032ClientConfig.Datas

function Q75032Trigger:OnPostDataPrepare()
    print("[MainId: 75032][Trigger: Q75032Trigger] OnPostDataPrepare")
    this = self
end

function Q75032Trigger:OnPostComponentPrepare()
    print("[MainId: 75032][Trigger: Q75032Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75032)
end

function Q75032Trigger:TriggerIn()
    print("[MainId: 75032][Trigger: Q75032Trigger] TriggerIn")
    actorMgr:GetActor("75032"):RequestInteraction(npcs.Npc6138Data.alias, "", true)
    this:DestroySelf()
end

function Q75032Trigger:PreTriggerIn()
    print("[MainId: 75032][Trigger: Q75032Trigger] PreTriggerIn")
end

function Q75032Trigger:LightUpTriggerIn()
    print("[MainId: 75032][Trigger: Q75032Trigger] LightUpTriggerIn")
end

function Q75032Trigger:TriggerOut()
    print("[MainId: 75032][Trigger: Q75032Trigger] TriggerOut")
end

return Q75032Trigger
