require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600340Trigger = class("Q7600340Trigger", GadgetActorProxy)
Q7600340Trigger.defaultAlias = "Q7600340Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600340Trigger:OnPostDataPrepare()
    print("Q7600340Trigger - OnPostDataPrepare")
    this = self
end

function Q7600340Trigger:OnPostComponentPrepare()
    print("Q7600340Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(27, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600340Trigger:TriggerIn()
    print("Q7600340Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600340)
    this:DestroySelf()
end

function Q7600340Trigger:PreTriggerIn()
    print("Q7600340Trigger - PreTriggerIn")
end

function Q7600340Trigger:LightUpTriggerIn()
    print("Q7600340Trigger - LightUpTriggerIn")
end

function Q7600340Trigger:TriggerOut()
    print("Q7600340Trigger - TriggerOut")
end

return Q7600340Trigger
