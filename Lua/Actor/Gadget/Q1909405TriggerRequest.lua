require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909405TriggerRequest = class("Q1909405TriggerRequest", GadgetActorProxy)
Q1909405TriggerRequest.defaultAlias = "Q1909405TriggerRequest"
local Q19094ClientConfig = require("Quest/Client/Q19094ClientConfig")

local this
local subIDs = Q19094ClientConfig.SubIDs
local npcs = Q19094ClientConfig.Npcs
local points = Q19094ClientConfig.Points
local datas = Q19094ClientConfig.Datas

function Q1909405TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909405TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909405TriggerRequest:TriggerIn()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] TriggerIn")
    actorMgr:GetActor("19094"):RequestInteraction(npcs.Npc1429Data.alias)
    this:DestroySelf()
end

function Q1909405TriggerRequest:PreTriggerIn()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] PreTriggerIn")
end

function Q1909405TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] LightUpTriggerIn")
end

function Q1909405TriggerRequest:TriggerOut()
    print("[MainId: 19094][Trigger: Q1909405TriggerRequest] TriggerOut")
end

return Q1909405TriggerRequest
