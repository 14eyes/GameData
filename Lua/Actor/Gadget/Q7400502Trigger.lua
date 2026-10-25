require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400502Trigger = class("Q7400502Trigger", GadgetActorProxy)
Q7400502Trigger.defaultAlias = "Q7400502Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400502Trigger:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400502Trigger] OnPostDataPrepare")
    this = self
end

function Q7400502Trigger:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400502Trigger:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400502Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74005")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId)
    actor:EnterSceneLookCamera({x = 2675.968, y = 442.489, z = 4774.264}, 0, 3, false, false)
    this:DestroySelf()
end

function Q7400502Trigger:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400502Trigger] PreTriggerIn")
end

function Q7400502Trigger:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400502Trigger] LightUpTriggerIn")
end

function Q7400502Trigger:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400502Trigger] TriggerOut")
end

return Q7400502Trigger
