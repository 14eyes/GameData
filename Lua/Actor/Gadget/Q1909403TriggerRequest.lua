require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909403TriggerRequest = class("Q1909403TriggerRequest", GadgetActorProxy)
Q1909403TriggerRequest.defaultAlias = "Q1909403TriggerRequest"
local Q19094ClientConfig = require("Quest/Client/Q19094ClientConfig")

local this
local subIDs = Q19094ClientConfig.SubIDs
local npcs = Q19094ClientConfig.Npcs
local points = Q19094ClientConfig.Points
local datas = Q19094ClientConfig.Datas

function Q1909403TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909403TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909403TriggerRequest:TriggerIn()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] TriggerIn")
    actorMgr:GetActor("19094"):RequestInteraction(npcs.WendyData.alias)
    this:DestroySelf()
end

function Q1909403TriggerRequest:PreTriggerIn()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] PreTriggerIn")
end

function Q1909403TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] LightUpTriggerIn")
end

function Q1909403TriggerRequest:TriggerOut()
    print("[MainId: 19094][Trigger: Q1909403TriggerRequest] TriggerOut")
end

return Q1909403TriggerRequest
