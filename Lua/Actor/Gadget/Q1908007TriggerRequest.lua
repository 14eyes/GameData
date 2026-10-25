require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1908007TriggerRequest = class("Q1908007TriggerRequest", GadgetActorProxy)
Q1908007TriggerRequest.defaultAlias = "Q1908007TriggerRequest"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q1908007TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1908007TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(3.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1908007TriggerRequest:TriggerIn()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] TriggerIn")
    actorMgr:GetActor("19080"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1908007TriggerRequest:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] PreTriggerIn")
end

function Q1908007TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] LightUpTriggerIn")
end

function Q1908007TriggerRequest:TriggerOut()
    print("[MainId: 19080][Trigger: Q1908007TriggerRequest] TriggerOut")
end

return Q1908007TriggerRequest
