require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400104Trigger = class("Q1400104Trigger", GadgetActorProxy)
Q1400104Trigger.defaultAlias = "Q1400104Trigger"
local Q14001ClientConfig = require("Quest/Client/Q14001ClientConfig")

local this
local subIDs = Q14001ClientConfig.SubIDs
local npcs = Q14001ClientConfig.Npcs
local points = Q14001ClientConfig.Points
local datas = Q14001ClientConfig.Datas

function Q1400104Trigger:OnPostDataPrepare()
    print("[MainId: 14001][Trigger: Q1400104Trigger] OnPostDataPrepare")
    this = self
end

function Q1400104Trigger:OnPostComponentPrepare()
    print("[MainId: 14001][Trigger: Q1400104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400104Trigger:TriggerIn()
    print("[MainId: 14001][Trigger: Q1400104Trigger] TriggerIn")
    actorMgr:GetActor("14001"):NarratorOnlyTaskByData(nil, nil, 14001)
    this:DestroySelf()
end

function Q1400104Trigger:PreTriggerIn()
    print("[MainId: 14001][Trigger: Q1400104Trigger] PreTriggerIn")
end

function Q1400104Trigger:LightUpTriggerIn()
    print("[MainId: 14001][Trigger: Q1400104Trigger] LightUpTriggerIn")
end

function Q1400104Trigger:TriggerOut()
    print("[MainId: 14001][Trigger: Q1400104Trigger] TriggerOut")
end

return Q1400104Trigger
