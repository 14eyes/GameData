require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40154Trigger = class("Q40154Trigger", GadgetActorProxy)
Q40154Trigger.defaultAlias = "Q40154Trigger"
local Q40154ClientConfig = require("Quest/Client/Q40154ClientConfig")

local this
local subIDs = Q40154ClientConfig.SubIDs
local npcs = Q40154ClientConfig.Npcs

function Q40154Trigger:OnPostDataPrepare()
    print("[MainId: 40154][Trigger: Q40154Trigger] OnPostDataPrepare")
    this = self
end

function Q40154Trigger:OnPostComponentPrepare()
    print("[MainId: 40154][Trigger: Q40154Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40154Trigger:TriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4015401)
    this:DestroySelf()
end

function Q40154Trigger:PreTriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger] PreTriggerIn")
end

function Q40154Trigger:LightUpTriggerIn()
    print("[MainId: 40154][Trigger: Q40154Trigger] LightUpTriggerIn")
end

function Q40154Trigger:TriggerOut()
    print("[MainId: 40154][Trigger: Q40154Trigger] TriggerOut")
end

return Q40154Trigger
