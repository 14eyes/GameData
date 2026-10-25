require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909807TriggerRequest = class("Q1909807TriggerRequest", GadgetActorProxy)
Q1909807TriggerRequest.defaultAlias = "Q1909807TriggerRequest"
local Q19098ClientConfig = require("Quest/Client/Q19098ClientConfig")

local this
local subIDs = Q19098ClientConfig.SubIDs
local npcs = Q19098ClientConfig.Npcs
local points = Q19098ClientConfig.Points

function Q1909807TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909807TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909807TriggerRequest:TriggerIn()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] TriggerIn")
    actorMgr:GetActor("19098"):RequestInteraction(npcs.Coop_KaeyaCostume.alias)
    this:DestroySelf()
end

function Q1909807TriggerRequest:PreTriggerIn()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] PreTriggerIn")
end

function Q1909807TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] LightUpTriggerIn")
end

function Q1909807TriggerRequest:TriggerOut()
    print("[MainId: 19098][Trigger: Q1909807TriggerRequest] TriggerOut")
end

return Q1909807TriggerRequest
