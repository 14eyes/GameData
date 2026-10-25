require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711602Trigger = class("Q7711602Trigger", GadgetActorProxy)
Q7711602Trigger.defaultAlias = "Q7711602Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711602Trigger:OnPostDataPrepare()
    print("Q7711602Trigger - OnPostDataPrepare")
    this = self
end

function Q7711602Trigger:OnPostComponentPrepare()
    print("Q7711602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711602Trigger:TriggerIn()
    print("Q7711602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711602)
    this:DestroySelf()
end

function Q7711602Trigger:PreTriggerIn()
    print("Q7711602Trigger - PreTriggerIn")
end

function Q7711602Trigger:LightUpTriggerIn()
    print("Q7711602Trigger - LightUpTriggerIn")
end

function Q7711602Trigger:TriggerOut()
    print("Q7711602Trigger - TriggerOut")
end

return Q7711602Trigger
