require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909602TriggerRequest = class("Q1909602TriggerRequest", GadgetActorProxy)
Q1909602TriggerRequest.defaultAlias = "Q1909602TriggerRequest"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q1909602TriggerRequest:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1909602TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909602TriggerRequest:TriggerIn()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] TriggerIn")
    actorMgr:GetActor("19096"):RequestInteraction(npcs.DilucData.alias)
    this:DestroySelf()
end

function Q1909602TriggerRequest:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] PreTriggerIn")
end

function Q1909602TriggerRequest:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] LightUpTriggerIn")
    actorMgr:GetActor("19096"):ShowBlackScreenWithDialogText(0, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Q1909602TriggerRequest:TriggerOut()
    print("[MainId: 19096][Trigger: Q1909602TriggerRequest] TriggerOut")
end

return Q1909602TriggerRequest
