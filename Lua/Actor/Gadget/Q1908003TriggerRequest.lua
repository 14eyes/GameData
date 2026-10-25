require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1908003TriggerRequest = class("Q1908003TriggerRequest", GadgetActorProxy)
Q1908003TriggerRequest.defaultAlias = "Q1908003TriggerRequest"
local Q19080ClientConfig = require("Quest/Client/Q19080ClientConfig")

local this
local subIDs = Q19080ClientConfig.SubIDs
local npcs = Q19080ClientConfig.Npcs
local points = Q19080ClientConfig.Points
local datas = Q19080ClientConfig.Datas

function Q1908003TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1908003TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1908003TriggerRequest:TriggerIn()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] TriggerIn")
    actorMgr:GetActor("19080"):RequestInteraction(npcs.Npc2054Data.alias)
    this:DestroySelf()
end

function Q1908003TriggerRequest:PreTriggerIn()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] PreTriggerIn")
end

function Q1908003TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] LightUpTriggerIn")
end

function Q1908003TriggerRequest:TriggerOut()
    print("[MainId: 19080][Trigger: Q1908003TriggerRequest] TriggerOut")
end

return Q1908003TriggerRequest
