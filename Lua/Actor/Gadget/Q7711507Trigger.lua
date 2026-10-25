require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711507Trigger = class("Q7711507Trigger", GadgetActorProxy)
Q7711507Trigger.defaultAlias = "Q7711507Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711507Trigger:OnPostDataPrepare()
    print("Q7711507Trigger - OnPostDataPrepare")
    this = self
end

function Q7711507Trigger:OnPostComponentPrepare()
    print("Q7711507Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711507Trigger:TriggerIn()
    print("Q7711507Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711507)
    this:DestroySelf()
end

function Q7711507Trigger:PreTriggerIn()
    print("Q7711507Trigger - PreTriggerIn")
end

function Q7711507Trigger:LightUpTriggerIn()
    print("Q7711507Trigger - LightUpTriggerIn")
end

function Q7711507Trigger:TriggerOut()
    print("Q7711507Trigger - TriggerOut")
end

return Q7711507Trigger
