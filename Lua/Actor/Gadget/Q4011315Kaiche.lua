require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011315Kaiche = class("Q4011315Kaiche", GadgetActorProxy)
Q4011315Kaiche.defaultAlias = "Q4011315Kaiche"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011315Kaiche:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011315Kaiche:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011315Kaiche:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] TriggerIn")
    actorMgr:GetActor("40113"):NarratorOnlyTaskByData(datas.kaiche401131502)
    this:DestroySelf()
end

function Q4011315Kaiche:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] PreTriggerIn")
end

function Q4011315Kaiche:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] LightUpTriggerIn")
end

function Q4011315Kaiche:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011315Kaiche] TriggerOut")
end

return Q4011315Kaiche
