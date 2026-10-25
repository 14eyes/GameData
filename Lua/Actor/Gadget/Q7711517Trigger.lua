require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711517Trigger = class("Q7711517Trigger", GadgetActorProxy)
Q7711517Trigger.defaultAlias = "Q7711517Trigger"
local Q77115ClientConfig = require("Quest/Client/Q77115ClientConfig")

local this
local subIDs = Q77115ClientConfig.SubIDs
local npcs = Q77115ClientConfig.Npcs
local points = Q77115ClientConfig.Points

function Q7711517Trigger:OnPostDataPrepare()
    print("Q7711517Trigger - OnPostDataPrepare")
    this = self
end

function Q7711517Trigger:OnPostComponentPrepare()
    print("Q7711517Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77115)
end

function Q7711517Trigger:TriggerIn()
    print("Q7711517Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711517)
    this:DestroySelf()
end

function Q7711517Trigger:PreTriggerIn()
    print("Q7711517Trigger - PreTriggerIn")
end

function Q7711517Trigger:LightUpTriggerIn()
    print("Q7711517Trigger - LightUpTriggerIn")
end

function Q7711517Trigger:TriggerOut()
    print("Q7711517Trigger - TriggerOut")
end

return Q7711517Trigger
