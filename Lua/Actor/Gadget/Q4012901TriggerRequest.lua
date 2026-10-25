require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012901TriggerRequest = class("Q4012901TriggerRequest", GadgetActorProxy)
Q4012901TriggerRequest.defaultAlias = "Q4012901TriggerRequest"
local Q40129ClientConfig = require("Quest/Client/Q40129ClientConfig")

local this
local subIDs = Q40129ClientConfig.SubIDs
local npcs = Q40129ClientConfig.Npcs
local points = Q40129ClientConfig.Points
local datas = Q40129ClientConfig.Datas

function Q4012901TriggerRequest:OnPostDataPrepare()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q4012901TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012901TriggerRequest:TriggerIn()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] TriggerIn")
    actorMgr:GetActor("40129"):RequestInteraction(npcs.Npc13558Data.alias)
    this:DestroySelf()
end

function Q4012901TriggerRequest:PreTriggerIn()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] PreTriggerIn")
end

function Q4012901TriggerRequest:LightUpTriggerIn()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] LightUpTriggerIn")
end

function Q4012901TriggerRequest:TriggerOut()
    print("[MainId: 40129][Trigger: Q4012901TriggerRequest] TriggerOut")
end

return Q4012901TriggerRequest
