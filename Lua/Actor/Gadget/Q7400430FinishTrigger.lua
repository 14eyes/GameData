require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400430FinishTrigger = class("Q7400430FinishTrigger", GadgetActorProxy)
Q7400430FinishTrigger.defaultAlias = "Q7400430FinishTrigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400430FinishTrigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] OnPostDataPrepare")
    this = self
end

function Q7400430FinishTrigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400430FinishTrigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400430)
    this:DestroySelf()
end

function Q7400430FinishTrigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] PreTriggerIn")
end

function Q7400430FinishTrigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] LightUpTriggerIn")
end

function Q7400430FinishTrigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400430FinishTrigger] TriggerOut")
end

return Q7400430FinishTrigger
