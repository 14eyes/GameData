require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401103Trigger = class("Q401103Trigger", GadgetActorProxy)
Q401103Trigger.defaultAlias = "Q401103Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401103Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401103Trigger] OnPostDataPrepare")
    this = self
end

function Q401103Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401103Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401103Trigger] TriggerIn")
    actorMgr:GetActor("4011"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    this:DestroySelf()
end

function Q401103Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401103Trigger] PreTriggerIn")
end

function Q401103Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401103Trigger] LightUpTriggerIn")
end

function Q401103Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401103Trigger] TriggerOut")
end

return Q401103Trigger
