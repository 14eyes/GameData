require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907903TriggerRequest = class("Q1907903TriggerRequest", GadgetActorProxy)
Q1907903TriggerRequest.defaultAlias = "Q1907903TriggerRequest"
local Q19079ClientConfig = require("Quest/Client/Q19079ClientConfig")

local this
local subIDs = Q19079ClientConfig.SubIDs
local npcs = Q19079ClientConfig.Npcs
local points = Q19079ClientConfig.Points
local datas = Q19079ClientConfig.Datas

function Q1907903TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1907903TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907903TriggerRequest:TriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] TriggerIn")
    actorMgr:GetActor("19079"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q1907903TriggerRequest:PreTriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] PreTriggerIn")
end

function Q1907903TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] LightUpTriggerIn")
end

function Q1907903TriggerRequest:TriggerOut()
    print("[MainId: 19079][Trigger: Q1907903TriggerRequest] TriggerOut")
end

return Q1907903TriggerRequest
