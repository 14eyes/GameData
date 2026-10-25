require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400429FinishTrigger = class("Q7400429FinishTrigger", GadgetActorProxy)
Q7400429FinishTrigger.defaultAlias = "Q7400429FinishTrigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400429FinishTrigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] OnPostDataPrepare")
    this = self
end

function Q7400429FinishTrigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400429FinishTrigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400429)
    this:DestroySelf()
end

function Q7400429FinishTrigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] PreTriggerIn")
end

function Q7400429FinishTrigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] LightUpTriggerIn")
end

function Q7400429FinishTrigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400429FinishTrigger] TriggerOut")
end

return Q7400429FinishTrigger
