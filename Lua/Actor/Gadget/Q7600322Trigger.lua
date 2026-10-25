require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600322Trigger = class("Q7600322Trigger", GadgetActorProxy)
Q7600322Trigger.defaultAlias = "Q7600322Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600322Trigger:OnPostDataPrepare()
    print("Q7600322Trigger - OnPostDataPrepare")
    this = self
end

function Q7600322Trigger:OnPostComponentPrepare()
    print("Q7600322Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600322Trigger:TriggerIn()
    print("Q7600322Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600322)
    this:DestroySelf()
end

function Q7600322Trigger:PreTriggerIn()
    print("Q7600322Trigger - PreTriggerIn")
end

function Q7600322Trigger:LightUpTriggerIn()
    print("Q7600322Trigger - LightUpTriggerIn")
end

function Q7600322Trigger:TriggerOut()
    print("Q7600322Trigger - TriggerOut")
end

return Q7600322Trigger
