require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608912Trigger = class("Q7608912Trigger", GadgetActorProxy)
Q7608912Trigger.defaultAlias = "Q7608912Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608912Trigger:OnPostDataPrepare()
    print("Q7608912Trigger - OnPostDataPrepare")
    this = self
end

function Q7608912Trigger:OnPostComponentPrepare()
    print("Q7608912Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608912Trigger:TriggerIn()
    print("Q7608912Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608912)
    this:DestroySelf()
end

function Q7608912Trigger:PreTriggerIn()
    print("Q7608912Trigger - PreTriggerIn")
end

function Q7608912Trigger:LightUpTriggerIn()
    print("Q7608912Trigger - LightUpTriggerIn")
end

function Q7608912Trigger:TriggerOut()
    print("Q7608912Trigger - TriggerOut")
end

return Q7608912Trigger
