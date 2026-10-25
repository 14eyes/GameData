require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400508Trigger = class("Q7400508Trigger", GadgetActorProxy)
Q7400508Trigger.defaultAlias = "Q7400508Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400508Trigger:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400508Trigger] OnPostDataPrepare")
    this = self
end

function Q7400508Trigger:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400508Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400508Trigger:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400508Trigger] TriggerIn")
    actorMgr:GetActor("74005"):NarratorOnlyTaskByData(datas.NarratorWithId_ship)
    this:DestroySelf()
end

function Q7400508Trigger:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400508Trigger] PreTriggerIn")
end

function Q7400508Trigger:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400508Trigger] LightUpTriggerIn")
end

function Q7400508Trigger:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400508Trigger] TriggerOut")
end

return Q7400508Trigger
