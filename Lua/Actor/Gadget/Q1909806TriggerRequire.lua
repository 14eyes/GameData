require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1909806TriggerRequire = class("Q1909806TriggerRequire", GadgetActorProxy)
Q1909806TriggerRequire.defaultAlias = "Q1909806TriggerRequire"
local Q19098ClientConfig = require("Quest/Client/Q19098ClientConfig")

local this
local subIDs = Q19098ClientConfig.SubIDs
local npcs = Q19098ClientConfig.Npcs
local points = Q19098ClientConfig.Points

function Q1909806TriggerRequire:OnPostDataPrepare()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] OnPostDataPrepare")
    this = self
end

function Q1909806TriggerRequire:OnPostComponentPrepare()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] OnPostComponentPrepare")
    this:AddComponentTrigger(3.2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1909806TriggerRequire:TriggerIn()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] TriggerIn")
    actorMgr:GetActor("19098"):RequestInteraction(npcs.Coop_KaeyaCostume.alias)
    this:DestroySelf()
end

function Q1909806TriggerRequire:PreTriggerIn()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] PreTriggerIn")
end

function Q1909806TriggerRequire:LightUpTriggerIn()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] LightUpTriggerIn")
end

function Q1909806TriggerRequire:TriggerOut()
    print("[MainId: 19098][Trigger: Q1909806TriggerRequire] TriggerOut")
end

return Q1909806TriggerRequire
