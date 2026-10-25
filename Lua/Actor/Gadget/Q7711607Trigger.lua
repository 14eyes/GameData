require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711607Trigger = class("Q7711607Trigger", GadgetActorProxy)
Q7711607Trigger.defaultAlias = "Q7711607Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711607Trigger:OnPostDataPrepare()
    print("Q7711607Trigger - OnPostDataPrepare")
    this = self
end

function Q7711607Trigger:OnPostComponentPrepare()
    print("Q7711607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711607Trigger:TriggerIn()
    print("Q7711607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711607)
    this:DestroySelf()
end

function Q7711607Trigger:PreTriggerIn()
    print("Q7711607Trigger - PreTriggerIn")
end

function Q7711607Trigger:LightUpTriggerIn()
    print("Q7711607Trigger - LightUpTriggerIn")
end

function Q7711607Trigger:TriggerOut()
    print("Q7711607Trigger - TriggerOut")
end

return Q7711607Trigger
