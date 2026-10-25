require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7720909Trigger = class("Q7720909Trigger", GadgetActorProxy)
Q7720909Trigger.defaultAlias = "Q7720909Trigger"
local Q77209ClientConfig = require("Quest/Client/Q77209ClientConfig")

local this
local subIDs = Q77209ClientConfig.SubIDs
local npcs = Q77209ClientConfig.Npcs
local points = Q77209ClientConfig.Points

function Q7720909Trigger:OnPostDataPrepare()
    print("Q7720909Trigger - OnPostDataPrepare")
    this = self
end

function Q7720909Trigger:OnPostComponentPrepare()
    print("Q7720909Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77209)
end

function Q7720909Trigger:TriggerIn()
    print("Q7720909Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7720909})
    this:DestroySelf()
end

function Q7720909Trigger:PreTriggerIn()
    print("Q7720909Trigger - PreTriggerIn")
end

function Q7720909Trigger:LightUpTriggerIn()
    print("Q7720909Trigger - LightUpTriggerIn")
end

function Q7720909Trigger:TriggerOut()
    print("Q7720909Trigger - TriggerOut")
end

return Q7720909Trigger
