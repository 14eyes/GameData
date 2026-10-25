require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011406Kaiche03 = class("Q4011406Kaiche03", GadgetActorProxy)
Q4011406Kaiche03.defaultAlias = "Q4011406Kaiche03"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011406Kaiche03:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] OnPostDataPrepare")
    this = self
end

function Q4011406Kaiche03:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011406Kaiche03:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] TriggerIn")
    actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q401140603Kaiche)
    this:DestroySelf()
end

function Q4011406Kaiche03:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] PreTriggerIn")
end

function Q4011406Kaiche03:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] LightUpTriggerIn")
end

function Q4011406Kaiche03:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011406Kaiche03] TriggerOut")
end

return Q4011406Kaiche03
