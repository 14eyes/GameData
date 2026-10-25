require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400521Trigger = class("Q7400521Trigger", GadgetActorProxy)
Q7400521Trigger.defaultAlias = "Q7400521Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q7400521Trigger:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q7400521Trigger] OnPostDataPrepare")
    this = self
end

function Q7400521Trigger:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q7400521Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400521Trigger:TriggerIn()
    print("[MainId: 74005][Trigger: Q7400521Trigger] TriggerIn")
    actorMgr:GetActor("74005"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q7400521Trigger:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q7400521Trigger] PreTriggerIn")
end

function Q7400521Trigger:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q7400521Trigger] LightUpTriggerIn")
end

function Q7400521Trigger:TriggerOut()
    print("[MainId: 74005][Trigger: Q7400521Trigger] TriggerOut")
end

return Q7400521Trigger
