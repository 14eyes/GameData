require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011003Trigger = class("Q4011003Trigger", GadgetActorProxy)
Q4011003Trigger.defaultAlias = "Q4011003Trigger"
local Q40110ClientConfig = require("Quest/Client/Q40110ClientConfig")

local this
local subIDs = Q40110ClientConfig.SubIDs
local npcs = Q40110ClientConfig.Npcs
local points = Q40110ClientConfig.Points
local datas = Q40110ClientConfig.Datas

function Q4011003Trigger:OnPostDataPrepare()
    print("[MainId: 40110][Trigger: Q4011003Trigger] OnPostDataPrepare")
    this = self
end

function Q4011003Trigger:OnPostComponentPrepare()
    print("[MainId: 40110][Trigger: Q4011003Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011003Trigger:TriggerIn()
    print("[MainId: 40110][Trigger: Q4011003Trigger] TriggerIn")
    actorMgr:GetActor("40110"):NarratorOnlyTaskByData(datas.NarratorWithId4011002)
    this:DestroySelf()
end

function Q4011003Trigger:PreTriggerIn()
    print("[MainId: 40110][Trigger: Q4011003Trigger] PreTriggerIn")
end

function Q4011003Trigger:LightUpTriggerIn()
    print("[MainId: 40110][Trigger: Q4011003Trigger] LightUpTriggerIn")
end

function Q4011003Trigger:TriggerOut()
    print("[MainId: 40110][Trigger: Q4011003Trigger] TriggerOut")
end

return Q4011003Trigger
