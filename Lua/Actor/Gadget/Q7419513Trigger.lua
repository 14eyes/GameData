require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419513Trigger = class("Q7419513Trigger", GadgetActorProxy)
Q7419513Trigger.defaultAlias = "Q7419513Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q7419513Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q7419513Trigger] OnPostDataPrepare")
    this = self
end

function Q7419513Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q7419513Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 16.49466, 28.40867, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74195)
end

function Q7419513Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q7419513Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419513)
    this:DestroySelf()
end

function Q7419513Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q7419513Trigger] PreTriggerIn")
end

function Q7419513Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q7419513Trigger] LightUpTriggerIn")
end

function Q7419513Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q7419513Trigger] TriggerOut")
end

return Q7419513Trigger
