require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400429FailTrigger = class("Q7400429FailTrigger", GadgetActorProxy)
Q7400429FailTrigger.defaultAlias = "Q7400429FailTrigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400429FailTrigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] OnPostDataPrepare")
    this = self
end

function Q7400429FailTrigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400429FailTrigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] TriggerIn")
end

function Q7400429FailTrigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] PreTriggerIn")
end

function Q7400429FailTrigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] LightUpTriggerIn")
end

function Q7400429FailTrigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400429FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7400429)
    this:DestroySelf()
end

return Q7400429FailTrigger
