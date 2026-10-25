require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711205Trigger = class("Q7711205Trigger", GadgetActorProxy)
Q7711205Trigger.defaultAlias = "Q7711205Trigger"
local Q77112ClientConfig = require("Quest/Client/Q77112ClientConfig")

local this
local subIDs = Q77112ClientConfig.SubIDs
local npcs = Q77112ClientConfig.Npcs
local points = Q77112ClientConfig.Points

function Q7711205Trigger:OnPostDataPrepare()
    print("Q7711205Trigger - OnPostDataPrepare")
    this = self
end

function Q7711205Trigger:OnPostComponentPrepare()
    print("Q7711205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77112)
end

function Q7711205Trigger:TriggerIn()
    print("Q7711205Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false})
    this:DestroySelf()
end

function Q7711205Trigger:PreTriggerIn()
    print("Q7711205Trigger - PreTriggerIn")
end

function Q7711205Trigger:LightUpTriggerIn()
    print("Q7711205Trigger - LightUpTriggerIn")
end

function Q7711205Trigger:TriggerOut()
    print("Q7711205Trigger - TriggerOut")
end

return Q7711205Trigger
