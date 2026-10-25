require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907302TriggerRequest = class("Q1907302TriggerRequest", GadgetActorProxy)
Q1907302TriggerRequest.defaultAlias = "Q1907302TriggerRequest"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q1907302TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1907302TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907302TriggerRequest:TriggerIn()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] TriggerIn")
    actorMgr:GetActor("19073"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1907302TriggerRequest:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] PreTriggerIn")
end

function Q1907302TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] LightUpTriggerIn")
end

function Q1907302TriggerRequest:TriggerOut()
    print("[MainId: 19073][Trigger: Q1907302TriggerRequest] TriggerOut")
end

return Q1907302TriggerRequest
