require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74502Trigger = class("Q74502Trigger", GadgetActorProxy)
Q74502Trigger.defaultAlias = "Q74502Trigger"
local Q74502ClientConfig = require("Quest/Client/Q74502ClientConfig")

local this
local subIDs = Q74502ClientConfig.SubIDs
local npcs = Q74502ClientConfig.Npcs
local points = Q74502ClientConfig.Points
local datas = Q74502ClientConfig.Datas

function Q74502Trigger:OnPostDataPrepare()
    print("[MainId: 74502][Trigger: Q74502Trigger] OnPostDataPrepare")
    this = self
end

function Q74502Trigger:OnPostComponentPrepare()
    print("[MainId: 74502][Trigger: Q74502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74502Trigger:TriggerIn()
    print("[MainId: 74502][Trigger: Q74502Trigger] TriggerIn")
    actorMgr:GetActor("74502"):RequestInteraction(npcs.Npc5029Data.alias)
    this:DestroySelf()
end

function Q74502Trigger:PreTriggerIn()
    print("[MainId: 74502][Trigger: Q74502Trigger] PreTriggerIn")
end

function Q74502Trigger:LightUpTriggerIn()
    print("[MainId: 74502][Trigger: Q74502Trigger] LightUpTriggerIn")
end

function Q74502Trigger:TriggerOut()
    print("[MainId: 74502][Trigger: Q74502Trigger] TriggerOut")
end

return Q74502Trigger
