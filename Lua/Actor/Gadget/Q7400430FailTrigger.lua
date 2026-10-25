require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400430FailTrigger = class("Q7400430FailTrigger", GadgetActorProxy)
Q7400430FailTrigger.defaultAlias = "Q7400430FailTrigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400430FailTrigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] OnPostDataPrepare")
    this = self
end

function Q7400430FailTrigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400430FailTrigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] TriggerIn")
end

function Q7400430FailTrigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] PreTriggerIn")
end

function Q7400430FailTrigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] LightUpTriggerIn")
end

function Q7400430FailTrigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400430FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7400430)
    this:DestroySelf()
end

return Q7400430FailTrigger
