require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7424901Trigger = class("Q7424901Trigger", GadgetActorProxy)
Q7424901Trigger.defaultAlias = "Q7424901Trigger"
local Q74249ClientConfig = require("Quest/Client/Q74249ClientConfig")

local this
local subIDs = Q74249ClientConfig.SubIDs
local npcs = Q74249ClientConfig.Npcs
local points = Q74249ClientConfig.Points

function Q7424901Trigger:OnPostDataPrepare()
    print("Q7424901Trigger - OnPostDataPrepare")
    this = self
end

function Q7424901Trigger:OnPostComponentPrepare()
    print("Q7424901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74249)
end

function Q7424901Trigger:TriggerIn()
    print("Q7424901Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7424901})
    this:DestroySelf()
end

function Q7424901Trigger:PreTriggerIn()
    print("Q7424901Trigger - PreTriggerIn")
end

function Q7424901Trigger:LightUpTriggerIn()
    print("Q7424901Trigger - LightUpTriggerIn")
end

function Q7424901Trigger:TriggerOut()
    print("Q7424901Trigger - TriggerOut")
end

return Q7424901Trigger
