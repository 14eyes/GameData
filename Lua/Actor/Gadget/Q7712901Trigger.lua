require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712901Trigger = class("Q7712901Trigger", GadgetActorProxy)
Q7712901Trigger.defaultAlias = "Q7712901Trigger"
local Q77129ClientConfig = require("Quest/Client/Q77129ClientConfig")

local this
local subIDs = Q77129ClientConfig.SubIDs
local npcs = Q77129ClientConfig.Npcs
local points = Q77129ClientConfig.Points

function Q7712901Trigger:OnPostDataPrepare()
    print("Q7712901Trigger - OnPostDataPrepare")
    this = self
end

function Q7712901Trigger:OnPostComponentPrepare()
    print("Q7712901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77129)
end

function Q7712901Trigger:TriggerIn()
    print("Q7712901Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712901})
    this:DestroySelf()
end

function Q7712901Trigger:PreTriggerIn()
    print("Q7712901Trigger - PreTriggerIn")
end

function Q7712901Trigger:LightUpTriggerIn()
    print("Q7712901Trigger - LightUpTriggerIn")
end

function Q7712901Trigger:TriggerOut()
    print("Q7712901Trigger - TriggerOut")
end

return Q7712901Trigger
