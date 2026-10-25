require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011301Kaiche = class("Q4011301Kaiche", GadgetActorProxy)
Q4011301Kaiche.defaultAlias = "Q4011301Kaiche"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011301Kaiche:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011301Kaiche:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011301Kaiche:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] TriggerIn")
    actorMgr:GetActor("40113"):NarratorOnlyTaskByData(datas.kaiche4011301, nil, 40113)
    this:DestroySelf()
end

function Q4011301Kaiche:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] PreTriggerIn")
end

function Q4011301Kaiche:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] LightUpTriggerIn")
end

function Q4011301Kaiche:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011301Kaiche] TriggerOut")
end

return Q4011301Kaiche
