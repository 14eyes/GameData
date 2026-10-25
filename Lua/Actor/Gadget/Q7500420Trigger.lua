require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500420Trigger = class("Q7500420Trigger", GadgetActorProxy)
Q7500420Trigger.defaultAlias = "Q7500420Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs

function Q7500420Trigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500420Trigger] OnPostDataPrepare")
    this = self
end

function Q7500420Trigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500420Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500420Trigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500420Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500420)
    this:DestroySelf()
end

function Q7500420Trigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500420Trigger] PreTriggerIn")
end

function Q7500420Trigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500420Trigger] LightUpTriggerIn")
end

function Q7500420Trigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500420Trigger] TriggerOut")
end

return Q7500420Trigger
