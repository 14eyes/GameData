require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712704Trigger = class("Q7712704Trigger", GadgetActorProxy)
Q7712704Trigger.defaultAlias = "Q7712704Trigger"
local Q77127ClientConfig = require("Quest/Client/Q77127ClientConfig")

local this
local subIDs = Q77127ClientConfig.SubIDs
local npcs = Q77127ClientConfig.Npcs
local points = Q77127ClientConfig.Points

function Q7712704Trigger:OnPostDataPrepare()
    print("Q7712704Trigger - OnPostDataPrepare")
    this = self
end

function Q7712704Trigger:OnPostComponentPrepare()
    print("Q7712704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77127)
end

function Q7712704Trigger:TriggerIn()
    print("Q7712704Trigger - TriggerIn")
end

function Q7712704Trigger:PreTriggerIn()
    print("Q7712704Trigger - PreTriggerIn")
end

function Q7712704Trigger:LightUpTriggerIn()
    print("Q7712704Trigger - LightUpTriggerIn")
end

function Q7712704Trigger:TriggerOut()
    print("Q7712704Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7712704)
    this:DestroySelf()
end

return Q7712704Trigger
