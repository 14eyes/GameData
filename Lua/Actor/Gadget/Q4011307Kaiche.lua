require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011307Kaiche = class("Q4011307Kaiche", GadgetActorProxy)
Q4011307Kaiche.defaultAlias = "Q4011307Kaiche"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011307Kaiche:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011307Kaiche:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(123, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011307Kaiche:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] TriggerIn")
    actorMgr:GetActor("40113"):NarratorOnlyTaskByData(datas.kaiche4011307, nil, 40113)
    this:DestroySelf()
end

function Q4011307Kaiche:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] PreTriggerIn")
end

function Q4011307Kaiche:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] LightUpTriggerIn")
end

function Q4011307Kaiche:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011307Kaiche] TriggerOut")
end

return Q4011307Kaiche
