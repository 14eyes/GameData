require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011204kaiche = class("Q4011204kaiche", GadgetActorProxy)
Q4011204kaiche.defaultAlias = "Q4011204kaiche"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011204kaiche:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011204kaiche] OnPostDataPrepare")
    this = self
end

function Q4011204kaiche:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011204kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011204kaiche:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011204kaiche] TriggerIn")
    actorMgr:GetActor("40112"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4011204_N1051").pos, 0, 3, false, false)
    actorMgr:GetActor("40112"):NarratorOnlyTaskByData(datas.Kaiche2)
    this:DestroySelf()
end

function Q4011204kaiche:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011204kaiche] PreTriggerIn")
end

function Q4011204kaiche:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011204kaiche] LightUpTriggerIn")
end

function Q4011204kaiche:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011204kaiche] TriggerOut")
end

return Q4011204kaiche
