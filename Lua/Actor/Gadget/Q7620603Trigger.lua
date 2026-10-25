require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620603Trigger = class("Q7620603Trigger", GadgetActorProxy)
Q7620603Trigger.defaultAlias = "Q7620603Trigger"
local Q76206ClientConfig = require("Quest/Client/Q76206ClientConfig")

local this
local subIDs = Q76206ClientConfig.SubIDs
local npcs = Q76206ClientConfig.Npcs
local points = Q76206ClientConfig.Points

function Q7620603Trigger:OnPostDataPrepare()
    print("Q7620603Trigger - OnPostDataPrepare")
    this = self
end

function Q7620603Trigger:OnPostComponentPrepare()
    print("Q7620603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76206)
end

function Q7620603Trigger:TriggerIn()
    print("Q7620603Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620603})
    this:DestroySelf()
end

function Q7620603Trigger:PreTriggerIn()
    print("Q7620603Trigger - PreTriggerIn")
end

function Q7620603Trigger:LightUpTriggerIn()
    print("Q7620603Trigger - LightUpTriggerIn")
end

function Q7620603Trigger:TriggerOut()
    print("Q7620603Trigger - TriggerOut")
end

return Q7620603Trigger
