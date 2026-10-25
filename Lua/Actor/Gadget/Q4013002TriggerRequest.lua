require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013002TriggerRequest = class("Q4013002TriggerRequest", GadgetActorProxy)
Q4013002TriggerRequest.defaultAlias = "Q4013002TriggerRequest"
local Q40130ClientConfig = require("Quest/Client/Q40130ClientConfig")

local this
local subIDs = Q40130ClientConfig.SubIDs
local npcs = Q40130ClientConfig.Npcs
local datas = Q40130ClientConfig.Datas

function Q4013002TriggerRequest:OnPostDataPrepare()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q4013002TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013002TriggerRequest:TriggerIn()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] TriggerIn")
    actorMgr:GetActor("40130"):RequestInteraction(npcs.Npc13642Data.alias, "", true)
    this:DestroySelf()
end

function Q4013002TriggerRequest:PreTriggerIn()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] PreTriggerIn")
end

function Q4013002TriggerRequest:LightUpTriggerIn()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] LightUpTriggerIn")
end

function Q4013002TriggerRequest:TriggerOut()
    print("[MainId: 40130][Trigger: Q4013002TriggerRequest] TriggerOut")
end

return Q4013002TriggerRequest
