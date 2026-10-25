require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600327Trigger = class("Q7600327Trigger", GadgetActorProxy)
Q7600327Trigger.defaultAlias = "Q7600327Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600327Trigger:OnPostDataPrepare()
    print("Q7600327Trigger - OnPostDataPrepare")
    this = self
end

function Q7600327Trigger:OnPostComponentPrepare()
    print("Q7600327Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(3, 8, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600327Trigger:TriggerIn()
    print("Q7600327Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600327)
    this:DestroySelf()
end

function Q7600327Trigger:PreTriggerIn()
    print("Q7600327Trigger - PreTriggerIn")
end

function Q7600327Trigger:LightUpTriggerIn()
    print("Q7600327Trigger - LightUpTriggerIn")
end

function Q7600327Trigger:TriggerOut()
    print("Q7600327Trigger - TriggerOut")
end

return Q7600327Trigger
