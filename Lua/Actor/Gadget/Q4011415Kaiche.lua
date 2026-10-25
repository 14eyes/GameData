require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011415Kaiche = class("Q4011415Kaiche", GadgetActorProxy)
Q4011415Kaiche.defaultAlias = "Q4011415Kaiche"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011415Kaiche:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] OnPostDataPrepare")
    this = self
end

function Q4011415Kaiche:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011415Kaiche:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] TriggerIn")
    if actorUtils.GetLocalAvatarGlobalValue("GV_IsInRollerCoaster") == 1 then
        actorMgr:GetActor("40114"):NarratorOnlyTaskByData(datas.Q4011415Kaiche)
        this:DestroySelf()
    end
end

function Q4011415Kaiche:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] PreTriggerIn")
end

function Q4011415Kaiche:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] LightUpTriggerIn")
end

function Q4011415Kaiche:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011415Kaiche] TriggerOut")
end

return Q4011415Kaiche
