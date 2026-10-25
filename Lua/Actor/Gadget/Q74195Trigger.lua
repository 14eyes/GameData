require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74195Trigger = class("Q74195Trigger", GadgetActorProxy)
Q74195Trigger.defaultAlias = "Q74195Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q74195Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q74195Trigger] OnPostDataPrepare")
    this = self
end

function Q74195Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q74195Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74195Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q74195Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7419523)
    this:DestroySelf()
end

function Q74195Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Trigger] PreTriggerIn")
end

function Q74195Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q74195Trigger] LightUpTriggerIn")
end

function Q74195Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q74195Trigger] TriggerOut")
end

return Q74195Trigger
