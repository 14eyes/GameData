require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4012805TriggerRequest = class("Q4012805TriggerRequest", GadgetActorProxy)
Q4012805TriggerRequest.defaultAlias = "Q4012805TriggerRequest"
local Q40128ClientConfig = require("Quest/Client/Q40128ClientConfig")

local this
local subIDs = Q40128ClientConfig.SubIDs
local npcs = Q40128ClientConfig.Npcs
local points = Q40128ClientConfig.Points
local datas = Q40128ClientConfig.Datas

function Q4012805TriggerRequest:OnPostDataPrepare()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q4012805TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4012805TriggerRequest:TriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] TriggerIn")
    actorMgr:GetActor("40128"):RequestInteraction(npcs.Npc13558Data.alias)
    this:DestroySelf()
end

function Q4012805TriggerRequest:PreTriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] PreTriggerIn")
end

function Q4012805TriggerRequest:LightUpTriggerIn()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] LightUpTriggerIn")
end

function Q4012805TriggerRequest:TriggerOut()
    print("[MainId: 40128][Trigger: Q4012805TriggerRequest] TriggerOut")
end

return Q4012805TriggerRequest
