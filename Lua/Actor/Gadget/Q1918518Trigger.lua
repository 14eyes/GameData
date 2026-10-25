require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918518Trigger = class("Q1918518Trigger", GadgetActorProxy)
Q1918518Trigger.defaultAlias = "Q1918518Trigger"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918518Trigger:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918518Trigger] OnPostDataPrepare")
    this = self
end

function Q1918518Trigger:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918518Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918518Trigger:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918518Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1918518)
    this:DestroySelf()
end

function Q1918518Trigger:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918518Trigger] PreTriggerIn")
end

function Q1918518Trigger:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918518Trigger] LightUpTriggerIn")
end

function Q1918518Trigger:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918518Trigger] TriggerOut")
end

return Q1918518Trigger
