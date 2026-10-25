require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400506Trigger01 = class("Q7400506Trigger01", GadgetActorProxy)
Q7400506Trigger01.defaultAlias = "Q7400506Trigger01"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400506Trigger01:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] OnPostDataPrepare")
    this = self
end

function Q7400506Trigger01:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400506Trigger01:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] TriggerIn")
    actorMgr:GetActor("74005"):NarratorOnlyTaskByData(datas.NarratorWithId_home1)
    this:DestroySelf()
end

function Q7400506Trigger01:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] PreTriggerIn")
end

function Q7400506Trigger01:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] LightUpTriggerIn")
end

function Q7400506Trigger01:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400506Trigger01] TriggerOut")
end

return Q7400506Trigger01
