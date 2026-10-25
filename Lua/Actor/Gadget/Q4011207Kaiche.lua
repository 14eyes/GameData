require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011207Kaiche = class("Q4011207Kaiche", GadgetActorProxy)
Q4011207Kaiche.defaultAlias = "Q4011207Kaiche"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011207Kaiche:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011207Kaiche:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011207Kaiche:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] TriggerIn")
    actorMgr:GetActor("40112"):NarratorOnlyTaskByData(datas.kaiche3, nil, 40112)
    this:DestroySelf()
end

function Q4011207Kaiche:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] PreTriggerIn")
end

function Q4011207Kaiche:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] LightUpTriggerIn")
end

function Q4011207Kaiche:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011207Kaiche] TriggerOut")
end

return Q4011207Kaiche
