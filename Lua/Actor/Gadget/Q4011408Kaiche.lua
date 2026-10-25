require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011408Kaiche = class("Q4011408Kaiche", GadgetActorProxy)
Q4011408Kaiche.defaultAlias = "Q4011408Kaiche"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011408Kaiche:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011408Kaiche:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011408Kaiche:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] TriggerIn")
    if actorUtils.IsInRollerCoaster() then
        actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q4011408Kaiche, nil, 40114)
        this:DestroySelf()
    end
end

function Q4011408Kaiche:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] PreTriggerIn")
end

function Q4011408Kaiche:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] LightUpTriggerIn")
end

function Q4011408Kaiche:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011408Kaiche] TriggerOut")
end

return Q4011408Kaiche
