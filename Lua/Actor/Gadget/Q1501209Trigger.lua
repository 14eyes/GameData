require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501209Trigger = class("Q1501209Trigger", GadgetActorProxy)
Q1501209Trigger.defaultAlias = "Q1501209Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501209Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501209Trigger] OnPostDataPrepare")
    this = self
end

function Q1501209Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501209Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501209Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501209Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1501209)
    this:DestroySelf()
end

function Q1501209Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501209Trigger] PreTriggerIn")
end

function Q1501209Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501209Trigger] LightUpTriggerIn")
end

function Q1501209Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501209Trigger] TriggerOut")
end

return Q1501209Trigger
