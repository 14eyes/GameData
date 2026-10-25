require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907812Trigger = class("Q1907812Trigger", GadgetActorProxy)
Q1907812Trigger.defaultAlias = "Q1907812Trigger"
local Q19078ClientConfig = require("Quest/Client/Q19078ClientConfig")

local this
local subIDs = Q19078ClientConfig.SubIDs
local npcs = Q19078ClientConfig.Npcs
local datas = Q19078ClientConfig.Datas

function Q1907812Trigger:OnPostDataPrepare()
    print("[MainId: 19078][Trigger: Q1907812Trigger] OnPostDataPrepare")
    this = self
end

function Q1907812Trigger:OnPostComponentPrepare()
    print("[MainId: 19078][Trigger: Q1907812Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907812Trigger:TriggerIn()
    print("[MainId: 19078][Trigger: Q1907812Trigger] TriggerIn")
end

function Q1907812Trigger:PreTriggerIn()
    print("[MainId: 19078][Trigger: Q1907812Trigger] PreTriggerIn")
    actorUtils.FinishQuestID(false, 1907812)
    this:DestroySelf()
end

function Q1907812Trigger:LightUpTriggerIn()
    print("[MainId: 19078][Trigger: Q1907812Trigger] LightUpTriggerIn")
end

function Q1907812Trigger:TriggerOut()
    print("[MainId: 19078][Trigger: Q1907812Trigger] TriggerOut")
end

return Q1907812Trigger
