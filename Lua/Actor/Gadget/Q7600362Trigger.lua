require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600362Trigger = class("Q7600362Trigger", GadgetActorProxy)
Q7600362Trigger.defaultAlias = "Q7600362Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600362Trigger:OnPostDataPrepare()
    print("Q7600362Trigger - OnPostDataPrepare")
    this = self
end

function Q7600362Trigger:OnPostComponentPrepare()
    print("Q7600362Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(2, 3, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600362Trigger:TriggerIn()
    print("Q7600362Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600362)
    this:DestroySelf()
end

function Q7600362Trigger:PreTriggerIn()
    print("Q7600362Trigger - PreTriggerIn")
end

function Q7600362Trigger:LightUpTriggerIn()
    print("Q7600362Trigger - LightUpTriggerIn")
end

function Q7600362Trigger:TriggerOut()
    print("Q7600362Trigger - TriggerOut")
end

return Q7600362Trigger
