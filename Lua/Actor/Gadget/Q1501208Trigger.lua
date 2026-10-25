require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501208Trigger = class("Q1501208Trigger", GadgetActorProxy)
Q1501208Trigger.defaultAlias = "Q1501208Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501208Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501208Trigger] OnPostDataPrepare")
    this = self
end

function Q1501208Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501208Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501208Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501208Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1501208)
    this:DestroySelf()
end

function Q1501208Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501208Trigger] PreTriggerIn")
end

function Q1501208Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501208Trigger] LightUpTriggerIn")
end

function Q1501208Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501208Trigger] TriggerOut")
end

return Q1501208Trigger
