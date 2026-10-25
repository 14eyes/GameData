require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502102Trigger = class("Q7502102Trigger", GadgetActorProxy)
Q7502102Trigger.defaultAlias = "Q7502102Trigger"
local Q75021ClientConfig = require("Quest/Client/Q75021ClientConfig")

local this
local subIDs = Q75021ClientConfig.SubIDs
local npcs = Q75021ClientConfig.Npcs
local points = Q75021ClientConfig.Points

function Q7502102Trigger:OnPostDataPrepare()
    print("[MainId: 75021][Trigger: Q7502102Trigger] OnPostDataPrepare")
    this = self
end

function Q7502102Trigger:OnPostComponentPrepare()
    print("[MainId: 75021][Trigger: Q7502102Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75021)
end

function Q7502102Trigger:TriggerIn()
    print("[MainId: 75021][Trigger: Q7502102Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502102)
    this:DestroySelf()
end

function Q7502102Trigger:PreTriggerIn()
    print("[MainId: 75021][Trigger: Q7502102Trigger] PreTriggerIn")
end

function Q7502102Trigger:LightUpTriggerIn()
    print("[MainId: 75021][Trigger: Q7502102Trigger] LightUpTriggerIn")
end

function Q7502102Trigger:TriggerOut()
    print("[MainId: 75021][Trigger: Q7502102Trigger] TriggerOut")
end

return Q7502102Trigger
