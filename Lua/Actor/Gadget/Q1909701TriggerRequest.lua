require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909701TriggerRequest = class("Q1909701TriggerRequest", GadgetActorProxy)
Q1909701TriggerRequest.defaultAlias = "Q1909701TriggerRequest"
local Q19097ClientConfig = require("Quest/Client/Q19097ClientConfig")

local this
local subIDs = Q19097ClientConfig.SubIDs
local npcs = Q19097ClientConfig.Npcs
local points = Q19097ClientConfig.Points
local datas = Q19097ClientConfig.Datas

function Q1909701TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909701TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909701TriggerRequest:TriggerIn()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] TriggerIn")
    actorMgr:GetActor("19097"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1909701TriggerRequest:PreTriggerIn()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] PreTriggerIn")
end

function Q1909701TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] LightUpTriggerIn")
end

function Q1909701TriggerRequest:TriggerOut()
    print("[MainId: 19097][Trigger: Q1909701TriggerRequest] TriggerOut")
end

return Q1909701TriggerRequest
