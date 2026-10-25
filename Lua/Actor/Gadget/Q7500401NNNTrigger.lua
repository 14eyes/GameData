require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500401NNNTrigger = class("Q7500401NNNTrigger", GadgetActorProxy)
Q7500401NNNTrigger.defaultAlias = "Q7500401NNNTrigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500401NNNTrigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] OnPostDataPrepare")
    this = self
end

function Q7500401NNNTrigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500401NNNTrigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500401)
    this:DestroySelf()
end

function Q7500401NNNTrigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] PreTriggerIn")
end

function Q7500401NNNTrigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] LightUpTriggerIn")
end

function Q7500401NNNTrigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500401NNNTrigger] TriggerOut")
end

return Q7500401NNNTrigger
