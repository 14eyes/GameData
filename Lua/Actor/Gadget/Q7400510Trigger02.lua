require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400510Trigger02 = class("Q7400510Trigger02", GadgetActorProxy)
Q7400510Trigger02.defaultAlias = "Q7400510Trigger02"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400510Trigger02:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] OnPostDataPrepare")
    this = self
end

function Q7400510Trigger02:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400510Trigger02:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] TriggerIn")
    actorMgr:GetActor("74005"):NarratorOnlyTaskByData(datas.NarratorWithId_xjytbattle)
    this:DestroySelf()
end

function Q7400510Trigger02:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] PreTriggerIn")
end

function Q7400510Trigger02:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] LightUpTriggerIn")
end

function Q7400510Trigger02:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400510Trigger02] TriggerOut")
end

return Q7400510Trigger02
