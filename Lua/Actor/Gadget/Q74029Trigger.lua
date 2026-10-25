require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74029Trigger = class("Q74029Trigger", GadgetActorProxy)
Q74029Trigger.defaultAlias = "Q74029Trigger"
local Q74029ClientConfig = require("Quest/Client/Q74029ClientConfig")

local this
local subIDs = Q74029ClientConfig.SubIDs
local npcs = Q74029ClientConfig.Npcs
local points = Q74029ClientConfig.Points
local datas = Q74029ClientConfig.Datas

function Q74029Trigger:OnPostDataPrepare()
    print("[MainId: 74029][Trigger: Q74029Trigger] OnPostDataPrepare")
    this = self
end

function Q74029Trigger:OnPostComponentPrepare()
    print("[MainId: 74029][Trigger: Q74029Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74029Trigger:TriggerIn()
    print("[MainId: 74029][Trigger: Q74029Trigger] TriggerIn")
    actorMgr:GetActor("74029"):RequestInteraction(npcs.Npc5321Data.alias)
    this:DestroySelf()
end

function Q74029Trigger:PreTriggerIn()
    print("[MainId: 74029][Trigger: Q74029Trigger] PreTriggerIn")
end

function Q74029Trigger:LightUpTriggerIn()
    print("[MainId: 74029][Trigger: Q74029Trigger] LightUpTriggerIn")
end

function Q74029Trigger:TriggerOut()
    print("[MainId: 74029][Trigger: Q74029Trigger] TriggerOut")
end

return Q74029Trigger
