require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402108TriggerRequest = class("Q1402108TriggerRequest", GadgetActorProxy)
Q1402108TriggerRequest.defaultAlias = "Q1402108TriggerRequest"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402108TriggerRequest:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1402108TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402108TriggerRequest:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] TriggerIn")
    actorMgr:GetActor("14021"):RequestInteraction(npcs.Npc1082Data.alias, "", true)
    this:DestroySelf()
end

function Q1402108TriggerRequest:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] PreTriggerIn")
end

function Q1402108TriggerRequest:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] LightUpTriggerIn")
end

function Q1402108TriggerRequest:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402108TriggerRequest] TriggerOut")
end

return Q1402108TriggerRequest
