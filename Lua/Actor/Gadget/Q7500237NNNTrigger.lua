require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500237NNNTrigger = class("Q7500237NNNTrigger", GadgetActorProxy)
Q7500237NNNTrigger.defaultAlias = "Q7500237NNNTrigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500237NNNTrigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] OnPostDataPrepare")
    this = self
end

function Q7500237NNNTrigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500237NNNTrigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500237)
    this:DestroySelf()
end

function Q7500237NNNTrigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] PreTriggerIn")
end

function Q7500237NNNTrigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] LightUpTriggerIn")
end

function Q7500237NNNTrigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500237NNNTrigger] TriggerOut")
end

return Q7500237NNNTrigger
