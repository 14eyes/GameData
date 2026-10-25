require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013006TriggerRequest = class("Q4013006TriggerRequest", GadgetActorProxy)
Q4013006TriggerRequest.defaultAlias = "Q4013006TriggerRequest"
local Q40130ClientConfig = require("Quest/Client/Q40130ClientConfig")

local this
local subIDs = Q40130ClientConfig.SubIDs
local npcs = Q40130ClientConfig.Npcs
local datas = Q40130ClientConfig.Datas

function Q4013006TriggerRequest:OnPostDataPrepare()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q4013006TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013006TriggerRequest:TriggerIn()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] TriggerIn")
    actorMgr:GetActor("40130"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("40130"):RequestInteraction(npcs.Npc13558Data.alias, "", true)
        this:DestroySelf()
    end)
end

function Q4013006TriggerRequest:PreTriggerIn()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] PreTriggerIn")
end

function Q4013006TriggerRequest:LightUpTriggerIn()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] LightUpTriggerIn")
end

function Q4013006TriggerRequest:TriggerOut()
    print("[MainId: 40130][Trigger: Q4013006TriggerRequest] TriggerOut")
end

return Q4013006TriggerRequest
