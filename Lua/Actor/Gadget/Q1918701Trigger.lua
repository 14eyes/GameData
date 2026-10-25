require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918701Trigger = class("Q1918701Trigger", GadgetActorProxy)
Q1918701Trigger.defaultAlias = "Q1918701Trigger"
local Q19187ClientConfig = require("Quest/Client/Q19187ClientConfig")

local this
local subIDs = Q19187ClientConfig.SubIDs
local npcs = Q19187ClientConfig.Npcs
local points = Q19187ClientConfig.Points
local datas = Q19187ClientConfig.Datas

function Q1918701Trigger:OnPostDataPrepare()
    print("[MainId: 19187][Trigger: Q1918701Trigger] OnPostDataPrepare")
    this = self
end

function Q1918701Trigger:OnPostComponentPrepare()
    print("[MainId: 19187][Trigger: Q1918701Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918701Trigger:TriggerIn()
    print("[MainId: 19187][Trigger: Q1918701Trigger] TriggerIn")
    actorMgr:GetActor("19187"):RequestInteraction(npcs.Npc14016Data.alias, "", true)
    this:DestroySelf()
end

function Q1918701Trigger:PreTriggerIn()
    print("[MainId: 19187][Trigger: Q1918701Trigger] PreTriggerIn")
end

function Q1918701Trigger:LightUpTriggerIn()
    print("[MainId: 19187][Trigger: Q1918701Trigger] LightUpTriggerIn")
end

function Q1918701Trigger:TriggerOut()
    print("[MainId: 19187][Trigger: Q1918701Trigger] TriggerOut")
end

return Q1918701Trigger
