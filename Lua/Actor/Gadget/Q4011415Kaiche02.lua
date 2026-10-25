require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011415Kaiche02 = class("Q4011415Kaiche02", GadgetActorProxy)
Q4011415Kaiche02.defaultAlias = "Q4011415Kaiche02"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011415Kaiche02:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] OnPostDataPrepare")
    this = self
end

function Q4011415Kaiche02:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011415Kaiche02:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] TriggerIn")
    if actorUtils.IsInRollerCoaster() then
        actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q401141502Kaiche)
        this:DestroySelf()
    end
end

function Q4011415Kaiche02:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] PreTriggerIn")
end

function Q4011415Kaiche02:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] LightUpTriggerIn")
end

function Q4011415Kaiche02:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011415Kaiche02] TriggerOut")
end

return Q4011415Kaiche02
