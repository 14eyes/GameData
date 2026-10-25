require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75012Trigger = class("Q75012Trigger", GadgetActorProxy)
Q75012Trigger.defaultAlias = "Q75012Trigger"
local Q75012ClientConfig = require("Quest/Client/Q75012ClientConfig")

local this
local subIDs = Q75012ClientConfig.SubIDs
local npcs = Q75012ClientConfig.Npcs
local points = Q75012ClientConfig.Points

function Q75012Trigger:OnPostDataPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger] OnPostDataPrepare")
    this = self
end

function Q75012Trigger:OnPostComponentPrepare()
    print("[MainId: 75012][Trigger: Q75012Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75012)
end

function Q75012Trigger:TriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501201)
    this:DestroySelf()
end

function Q75012Trigger:PreTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger] PreTriggerIn")
end

function Q75012Trigger:LightUpTriggerIn()
    print("[MainId: 75012][Trigger: Q75012Trigger] LightUpTriggerIn")
end

function Q75012Trigger:TriggerOut()
    print("[MainId: 75012][Trigger: Q75012Trigger] TriggerOut")
end

return Q75012Trigger
