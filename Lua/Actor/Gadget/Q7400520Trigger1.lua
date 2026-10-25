require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400520Trigger1 = class("Q7400520Trigger1", GadgetActorProxy)
Q7400520Trigger1.defaultAlias = "Q7400520Trigger1"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400520Trigger1:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] OnPostDataPrepare")
    this = self
end

function Q7400520Trigger1:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400520Trigger1:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74005")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    actor:EnterSceneLookCamera({x = 2452.785, y = 245.89, z = 4867.702}, 0, 3, false, false)
    this:DestroySelf()
end

function Q7400520Trigger1:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] PreTriggerIn")
end

function Q7400520Trigger1:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] LightUpTriggerIn")
end

function Q7400520Trigger1:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400520Trigger1] TriggerOut")
end

return Q7400520Trigger1
