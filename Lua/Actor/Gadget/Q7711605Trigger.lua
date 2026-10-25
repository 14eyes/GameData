require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711605Trigger = class("Q7711605Trigger", GadgetActorProxy)
Q7711605Trigger.defaultAlias = "Q7711605Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711605Trigger:OnPostDataPrepare()
    print("Q7711605Trigger - OnPostDataPrepare")
    this = self
end

function Q7711605Trigger:OnPostComponentPrepare()
    print("Q7711605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711605Trigger:TriggerIn()
    print("Q7711605Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711605)
    this:DestroySelf()
end

function Q7711605Trigger:PreTriggerIn()
    print("Q7711605Trigger - PreTriggerIn")
end

function Q7711605Trigger:LightUpTriggerIn()
    print("Q7711605Trigger - LightUpTriggerIn")
end

function Q7711605Trigger:TriggerOut()
    print("Q7711605Trigger - TriggerOut")
end

return Q7711605Trigger
