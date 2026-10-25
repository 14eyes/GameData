require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24012Trigger = class("Q24012Trigger", GadgetActorProxy)
Q24012Trigger.defaultAlias = "Q24012Trigger"
local Q24012ClientConfig = require("Quest/Client/Q24012ClientConfig")

local this
local subIDs = Q24012ClientConfig.SubIDs
local npcs = Q24012ClientConfig.Npcs

function Q24012Trigger:OnPostDataPrepare()
    print("[MainId: 24012][Trigger: Q24012Trigger] OnPostDataPrepare")
    this = self
end

function Q24012Trigger:OnPostComponentPrepare()
    print("[MainId: 24012][Trigger: Q24012Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(2.5, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24012Trigger:TriggerIn()
    print("[MainId: 24012][Trigger: Q24012Trigger] TriggerIn")
end

function Q24012Trigger:PreTriggerIn()
    print("[MainId: 24012][Trigger: Q24012Trigger] PreTriggerIn")
end

function Q24012Trigger:LightUpTriggerIn()
    print("[MainId: 24012][Trigger: Q24012Trigger] LightUpTriggerIn")
end

function Q24012Trigger:TriggerOut()
    print("[MainId: 24012][Trigger: Q24012Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 2401213)
end

return Q24012Trigger
