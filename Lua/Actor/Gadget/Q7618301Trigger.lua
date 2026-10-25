require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618301Trigger = class("Q7618301Trigger", GadgetActorProxy)
Q7618301Trigger.defaultAlias = "Q7618301Trigger"
local Q76183ClientConfig = require("Quest/Client/Q76183ClientConfig")

local this
local subIDs = Q76183ClientConfig.SubIDs
local npcs = Q76183ClientConfig.Npcs
local points = Q76183ClientConfig.Points

function Q7618301Trigger:OnPostDataPrepare()
    print("Q7618301Trigger - OnPostDataPrepare")
    this = self
end

function Q7618301Trigger:OnPostComponentPrepare()
    print("Q7618301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76183)
end

function Q7618301Trigger:TriggerIn()
    print("Q7618301Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618301})
    this:DestroySelf()
end

function Q7618301Trigger:PreTriggerIn()
    print("Q7618301Trigger - PreTriggerIn")
end

function Q7618301Trigger:LightUpTriggerIn()
    print("Q7618301Trigger - LightUpTriggerIn")
end

function Q7618301Trigger:TriggerOut()
    print("Q7618301Trigger - TriggerOut")
end

return Q7618301Trigger
