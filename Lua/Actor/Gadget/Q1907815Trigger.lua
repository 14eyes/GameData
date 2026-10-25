require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907815Trigger = class("Q1907815Trigger", GadgetActorProxy)
Q1907815Trigger.defaultAlias = "Q1907815Trigger"
local Q19078ClientConfig = require("Quest/Client/Q19078ClientConfig")

local this
local subIDs = Q19078ClientConfig.SubIDs
local npcs = Q19078ClientConfig.Npcs
local datas = Q19078ClientConfig.Datas

function Q1907815Trigger:OnPostDataPrepare()
    print("[MainId: 19078][Trigger: Q1907815Trigger] OnPostDataPrepare")
    this = self
end

function Q1907815Trigger:OnPostComponentPrepare()
    print("[MainId: 19078][Trigger: Q1907815Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16.9743, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907815Trigger:TriggerIn()
    print("[MainId: 19078][Trigger: Q1907815Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1907815)
    this:DestroySelf()
end

function Q1907815Trigger:PreTriggerIn()
    print("[MainId: 19078][Trigger: Q1907815Trigger] PreTriggerIn")
end

function Q1907815Trigger:LightUpTriggerIn()
    print("[MainId: 19078][Trigger: Q1907815Trigger] LightUpTriggerIn")
end

function Q1907815Trigger:TriggerOut()
    print("[MainId: 19078][Trigger: Q1907815Trigger] TriggerOut")
end

return Q1907815Trigger
