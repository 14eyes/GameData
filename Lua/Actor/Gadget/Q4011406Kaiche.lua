require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011406Kaiche = class("Q4011406Kaiche", GadgetActorProxy)
Q4011406Kaiche.defaultAlias = "Q4011406Kaiche"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011406Kaiche:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011406Kaiche:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011406Kaiche:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] TriggerIn")
    if actorUtils.IsInRollerCoaster() then
        actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q4011406Kaiche, nil, 40114)
        this:DestroySelf()
    end
end

function Q4011406Kaiche:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] PreTriggerIn")
end

function Q4011406Kaiche:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] LightUpTriggerIn")
end

function Q4011406Kaiche:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011406Kaiche] TriggerOut")
end

return Q4011406Kaiche
