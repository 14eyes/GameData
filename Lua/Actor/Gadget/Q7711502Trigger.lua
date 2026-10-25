require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711502Trigger = class("Q7711502Trigger", GadgetActorProxy)
Q7711502Trigger.defaultAlias = "Q7711502Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711502Trigger:OnPostDataPrepare()
    print("Q7711502Trigger - OnPostDataPrepare")
    this = self
end

function Q7711502Trigger:OnPostComponentPrepare()
    print("Q7711502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711502Trigger:TriggerIn()
    print("Q7711502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711502)
    this:DestroySelf()
end

function Q7711502Trigger:PreTriggerIn()
    print("Q7711502Trigger - PreTriggerIn")
end

function Q7711502Trigger:LightUpTriggerIn()
    print("Q7711502Trigger - LightUpTriggerIn")
end

function Q7711502Trigger:TriggerOut()
    print("Q7711502Trigger - TriggerOut")
end

return Q7711502Trigger
