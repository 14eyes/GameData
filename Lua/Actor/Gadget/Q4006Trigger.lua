require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger = class("Q4006Trigger", GadgetActorProxy)
Q4006Trigger.defaultAlias = "Q4006Trigger"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger] OnPostDataPrepare")
    this = self
end

function Q4006Trigger:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger] TriggerIn")
    actorMgr:GetActor("4006"):RequestInteraction(npcs.Npc13365Data.alias)
    this:DestroySelf()
end

function Q4006Trigger:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger] PreTriggerIn")
end

function Q4006Trigger:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger] LightUpTriggerIn")
end

function Q4006Trigger:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger] TriggerOut")
end

return Q4006Trigger
