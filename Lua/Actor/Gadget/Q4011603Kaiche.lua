require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011603Kaiche = class("Q4011603Kaiche", GadgetActorProxy)
Q4011603Kaiche.defaultAlias = "Q4011603Kaiche"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011603Kaiche:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011603Kaiche:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011603Kaiche:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] TriggerIn")
    actorMgr:GetActor("40116"):NarratorOnlyTaskByData(datas.Q4011603kaiche, nil, 40116)
    this:DestroySelf()
end

function Q4011603Kaiche:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] PreTriggerIn")
end

function Q4011603Kaiche:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] LightUpTriggerIn")
end

function Q4011603Kaiche:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011603Kaiche] TriggerOut")
end

return Q4011603Kaiche
