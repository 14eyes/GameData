require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909601TriggerRequest = class("Q1909601TriggerRequest", GadgetActorProxy)
Q1909601TriggerRequest.defaultAlias = "Q1909601TriggerRequest"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q1909601TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909601TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909601TriggerRequest:TriggerIn()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] TriggerIn")
    actorMgr:GetActor("19096"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1909601TriggerRequest:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] PreTriggerIn")
end

function Q1909601TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] LightUpTriggerIn")
end

function Q1909601TriggerRequest:TriggerOut()
    print("[MainId: 19096][Trigger: Q1909601TriggerRequest] TriggerOut")
end

return Q1909601TriggerRequest
