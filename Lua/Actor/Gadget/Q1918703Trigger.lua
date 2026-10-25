require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918703Trigger = class("Q1918703Trigger", GadgetActorProxy)
Q1918703Trigger.defaultAlias = "Q1918703Trigger"
local Q19187ClientConfig = require("Quest/Client/Q19187ClientConfig")

local this
local subIDs = Q19187ClientConfig.SubIDs
local npcs = Q19187ClientConfig.Npcs
local points = Q19187ClientConfig.Points
local datas = Q19187ClientConfig.Datas

function Q1918703Trigger:OnPostDataPrepare()
    print("[MainId: 19187][Trigger: Q1918703Trigger] OnPostDataPrepare")
    this = self
end

function Q1918703Trigger:OnPostComponentPrepare()
    print("[MainId: 19187][Trigger: Q1918703Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918703Trigger:TriggerIn()
    print("[MainId: 19187][Trigger: Q1918703Trigger] TriggerIn")
    actorMgr:GetActor("19187"):RequestInteraction(npcs.Npc518Data.alias, "", true)
    this:DestroySelf()
end

function Q1918703Trigger:PreTriggerIn()
    print("[MainId: 19187][Trigger: Q1918703Trigger] PreTriggerIn")
end

function Q1918703Trigger:LightUpTriggerIn()
    print("[MainId: 19187][Trigger: Q1918703Trigger] LightUpTriggerIn")
end

function Q1918703Trigger:TriggerOut()
    print("[MainId: 19187][Trigger: Q1918703Trigger] TriggerOut")
end

return Q1918703Trigger
