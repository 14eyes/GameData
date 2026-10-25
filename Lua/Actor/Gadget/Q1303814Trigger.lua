require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1303814Trigger = class("Q1303814Trigger", GadgetActorProxy)
Q1303814Trigger.defaultAlias = "Q1303814Trigger"
local Q13038ClientConfig = require("Quest/Client/Q13038ClientConfig")

local this
local subIDs = Q13038ClientConfig.SubIDs
local npcs = Q13038ClientConfig.Npcs
local points = Q13038ClientConfig.Points
local datas = Q13038ClientConfig.Datas

function Q1303814Trigger:OnPostDataPrepare()
    print("[MainId: 13038][Trigger: Q1303814Trigger] OnPostDataPrepare")
    this = self
end

function Q1303814Trigger:OnPostComponentPrepare()
    print("[MainId: 13038][Trigger: Q1303814Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 13038)
end

function Q1303814Trigger:TriggerIn()
    print("[MainId: 13038][Trigger: Q1303814Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303814)
    this:DestroySelf()
end

function Q1303814Trigger:PreTriggerIn()
    print("[MainId: 13038][Trigger: Q1303814Trigger] PreTriggerIn")
end

function Q1303814Trigger:LightUpTriggerIn()
    print("[MainId: 13038][Trigger: Q1303814Trigger] LightUpTriggerIn")
end

function Q1303814Trigger:TriggerOut()
    print("[MainId: 13038][Trigger: Q1303814Trigger] TriggerOut")
end

return Q1303814Trigger
