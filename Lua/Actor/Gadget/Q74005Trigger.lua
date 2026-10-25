require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74005Trigger = class("Q74005Trigger", GadgetActorProxy)
Q74005Trigger.defaultAlias = "Q74005Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points
local datas = Q74005ClientConfig.Datas

function Q74005Trigger:OnPostDataPrepare()
    print("[MainId: 74005][Trigger: Q74005Trigger] OnPostDataPrepare")
    this = self
end

function Q74005Trigger:OnPostComponentPrepare()
    print("[MainId: 74005][Trigger: Q74005Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74005Trigger:TriggerIn()
    print("[MainId: 74005][Trigger: Q74005Trigger] TriggerIn")
    actorMgr:GetActor("74005"):RequestInteraction(npcs.Npc5301Data.alias)
    this:DestroySelf()
end

function Q74005Trigger:PreTriggerIn()
    print("[MainId: 74005][Trigger: Q74005Trigger] PreTriggerIn")
end

function Q74005Trigger:LightUpTriggerIn()
    print("[MainId: 74005][Trigger: Q74005Trigger] LightUpTriggerIn")
end

function Q74005Trigger:TriggerOut()
    print("[MainId: 74005][Trigger: Q74005Trigger] TriggerOut")
end

return Q74005Trigger
