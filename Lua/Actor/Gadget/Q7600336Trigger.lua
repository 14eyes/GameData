require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600336Trigger = class("Q7600336Trigger", GadgetActorProxy)
Q7600336Trigger.defaultAlias = "Q7600336Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600336Trigger:OnPostDataPrepare()
    print("Q7600336Trigger - OnPostDataPrepare")
    this = self
end

function Q7600336Trigger:OnPostComponentPrepare()
    print("Q7600336Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600336Trigger:TriggerIn()
    print("Q7600336Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600336)
    this:DestroySelf()
end

function Q7600336Trigger:PreTriggerIn()
    print("Q7600336Trigger - PreTriggerIn")
end

function Q7600336Trigger:LightUpTriggerIn()
    print("Q7600336Trigger - LightUpTriggerIn")
end

function Q7600336Trigger:TriggerOut()
    print("Q7600336Trigger - TriggerOut")
end

return Q7600336Trigger
