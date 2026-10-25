require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600335Trigger = class("Q7600335Trigger", GadgetActorProxy)
Q7600335Trigger.defaultAlias = "Q7600335Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600335Trigger:OnPostDataPrepare()
    print("Q7600335Trigger - OnPostDataPrepare")
    this = self
end

function Q7600335Trigger:OnPostComponentPrepare()
    print("Q7600335Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600335Trigger:TriggerIn()
    print("Q7600335Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600335)
    this:DestroySelf()
end

function Q7600335Trigger:PreTriggerIn()
    print("Q7600335Trigger - PreTriggerIn")
end

function Q7600335Trigger:LightUpTriggerIn()
    print("Q7600335Trigger - LightUpTriggerIn")
end

function Q7600335Trigger:TriggerOut()
    print("Q7600335Trigger - TriggerOut")
end

return Q7600335Trigger
