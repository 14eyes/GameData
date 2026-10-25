require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401004Trigger = class("Q1401004Trigger", GadgetActorProxy)
Q1401004Trigger.defaultAlias = "Q1401004Trigger"
local Q14010ClientConfig = require("Quest/Client/Q14010ClientConfig")

local this
local subIDs = Q14010ClientConfig.SubIDs
local npcs = Q14010ClientConfig.Npcs
local points = Q14010ClientConfig.Points
local datas = Q14010ClientConfig.Datas

function Q1401004Trigger:OnPostDataPrepare()
    print("[MainId: 14010][Trigger: Q1401004Trigger] OnPostDataPrepare")
    this = self
end

function Q1401004Trigger:OnPostComponentPrepare()
    print("[MainId: 14010][Trigger: Q1401004Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401004Trigger:TriggerIn()
    print("[MainId: 14010][Trigger: Q1401004Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1401004)
    this:DestroySelf()
end

function Q1401004Trigger:PreTriggerIn()
    print("[MainId: 14010][Trigger: Q1401004Trigger] PreTriggerIn")
end

function Q1401004Trigger:LightUpTriggerIn()
    print("[MainId: 14010][Trigger: Q1401004Trigger] LightUpTriggerIn")
end

function Q1401004Trigger:TriggerOut()
    print("[MainId: 14010][Trigger: Q1401004Trigger] TriggerOut")
end

return Q1401004Trigger
