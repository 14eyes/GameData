require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74177Trigger = class("Q74177Trigger", GadgetActorProxy)
Q74177Trigger.defaultAlias = "Q74177Trigger"
local Q74177ClientConfig = require("Quest/Client/Q74177ClientConfig")

local this
local subIDs = Q74177ClientConfig.SubIDs
local npcs = Q74177ClientConfig.Npcs
local points = Q74177ClientConfig.Points

function Q74177Trigger:OnPostDataPrepare()
    print("[MainId: 74177][Trigger: Q74177Trigger] OnPostDataPrepare")
    this = self
end

function Q74177Trigger:OnPostComponentPrepare()
    print("[MainId: 74177][Trigger: Q74177Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74177Trigger:TriggerIn()
    print("[MainId: 74177][Trigger: Q74177Trigger] TriggerIn")
end

function Q74177Trigger:PreTriggerIn()
    print("[MainId: 74177][Trigger: Q74177Trigger] PreTriggerIn")
end

function Q74177Trigger:LightUpTriggerIn()
    print("[MainId: 74177][Trigger: Q74177Trigger] LightUpTriggerIn")
end

function Q74177Trigger:TriggerOut()
    print("[MainId: 74177][Trigger: Q74177Trigger] TriggerOut")
    actorUtils.FinishQuestID(false, 7417701)
    this:DestroySelf()
end

return Q74177Trigger
