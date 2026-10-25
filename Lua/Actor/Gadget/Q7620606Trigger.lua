require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620606Trigger = class("Q7620606Trigger", GadgetActorProxy)
Q7620606Trigger.defaultAlias = "Q7620606Trigger"
local Q76206ClientConfig = require("Quest/Client/Q76206ClientConfig")

local this
local subIDs = Q76206ClientConfig.SubIDs
local npcs = Q76206ClientConfig.Npcs
local points = Q76206ClientConfig.Points

function Q7620606Trigger:OnPostDataPrepare()
    print("Q7620606Trigger - OnPostDataPrepare")
    this = self
end

function Q7620606Trigger:OnPostComponentPrepare()
    print("Q7620606Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76206)
end

function Q7620606Trigger:TriggerIn()
    print("Q7620606Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620606})
    this:DestroySelf()
end

function Q7620606Trigger:PreTriggerIn()
    print("Q7620606Trigger - PreTriggerIn")
end

function Q7620606Trigger:LightUpTriggerIn()
    print("Q7620606Trigger - LightUpTriggerIn")
end

function Q7620606Trigger:TriggerOut()
    print("Q7620606Trigger - TriggerOut")
end

return Q7620606Trigger
