require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500420NNNTrigger = class("Q7500420NNNTrigger", GadgetActorProxy)
Q7500420NNNTrigger.defaultAlias = "Q7500420NNNTrigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500420NNNTrigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] OnPostDataPrepare")
    this = self
end

function Q7500420NNNTrigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 50, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500420NNNTrigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500420)
    this:DestroySelf()
end

function Q7500420NNNTrigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] PreTriggerIn")
end

function Q7500420NNNTrigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] LightUpTriggerIn")
end

function Q7500420NNNTrigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500420NNNTrigger] TriggerOut")
end

return Q7500420NNNTrigger
