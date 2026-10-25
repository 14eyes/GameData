require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011609Kaiche = class("Q4011609Kaiche", GadgetActorProxy)
Q4011609Kaiche.defaultAlias = "Q4011609Kaiche"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011609Kaiche:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011609Kaiche:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011609Kaiche:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] TriggerIn")
    actorMgr:GetActor("40116"):NarratorOnlyTaskByData(datas.Q4011609Kaiche)
    this:DestroySelf()
end

function Q4011609Kaiche:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] PreTriggerIn")
end

function Q4011609Kaiche:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] LightUpTriggerIn")
end

function Q4011609Kaiche:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011609Kaiche] TriggerOut")
end

return Q4011609Kaiche
