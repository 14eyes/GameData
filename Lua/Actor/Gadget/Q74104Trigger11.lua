require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger11 = class("Q74104Trigger11", GadgetActorProxy)
Q74104Trigger11.defaultAlias = "Q74104Trigger11"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger11:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger11] OnPostDataPrepare")
    this = self
end

function Q74104Trigger11:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger11] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger11:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger11] TriggerIn")
    local actor = actorMgr:GetActor("74104")
    this:DestroySelf()
    actor:RequestInteraction(npcs.Npc21137Data.alias, npcs.Npc21137Data.alias, true)
end

function Q74104Trigger11:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger11] PreTriggerIn")
end

function Q74104Trigger11:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger11] LightUpTriggerIn")
end

function Q74104Trigger11:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger11] TriggerOut")
end

return Q74104Trigger11
