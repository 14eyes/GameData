require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402002TriggerRequest = class("Q1402002TriggerRequest", GadgetActorProxy)
Q1402002TriggerRequest.defaultAlias = "Q1402002TriggerRequest"
local Q14020ClientConfig = require("Quest/Client/Q14020ClientConfig")

local this
local subIDs = Q14020ClientConfig.SubIDs
local npcs = Q14020ClientConfig.Npcs
local points = Q14020ClientConfig.Points
local datas = Q14020ClientConfig.Datas

function Q1402002TriggerRequest:OnPostDataPrepare()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1402002TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402002TriggerRequest:TriggerIn()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] TriggerIn")
    actorMgr:GetActor("14020"):RequestInteraction(npcs.Npc1081Data.alias, "", true)
    this:DestroySelf()
end

function Q1402002TriggerRequest:PreTriggerIn()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] PreTriggerIn")
end

function Q1402002TriggerRequest:LightUpTriggerIn()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] LightUpTriggerIn")
end

function Q1402002TriggerRequest:TriggerOut()
    print("[MainId: 14020][Trigger: Q1402002TriggerRequest] TriggerOut")
end

return Q1402002TriggerRequest
