require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617702Trigger = class("Q7617702Trigger", GadgetActorProxy)
Q7617702Trigger.defaultAlias = "Q7617702Trigger"
local Q76177ClientConfig = require("Quest/Client/Q76177ClientConfig")

local this
local subIDs = Q76177ClientConfig.SubIDs
local npcs = Q76177ClientConfig.Npcs
local points = Q76177ClientConfig.Points

function Q7617702Trigger:OnPostDataPrepare()
    print("Q7617702Trigger - OnPostDataPrepare")
    this = self
end

function Q7617702Trigger:OnPostComponentPrepare()
    print("Q7617702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76177)
end

function Q7617702Trigger:TriggerIn()
    print("Q7617702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7617702)
    this:DestroySelf()
end

function Q7617702Trigger:PreTriggerIn()
    print("Q7617702Trigger - PreTriggerIn")
end

function Q7617702Trigger:LightUpTriggerIn()
    print("Q7617702Trigger - LightUpTriggerIn")
end

function Q7617702Trigger:TriggerOut()
    print("Q7617702Trigger - TriggerOut")
end

return Q7617702Trigger
