require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608901Trigger = class("Q7608901Trigger", GadgetActorProxy)
Q7608901Trigger.defaultAlias = "Q7608901Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608901Trigger:OnPostDataPrepare()
    print("Q7608901Trigger - OnPostDataPrepare")
    this = self
end

function Q7608901Trigger:OnPostComponentPrepare()
    print("Q7608901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608901Trigger:TriggerIn()
    print("Q7608901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608901)
    this:DestroySelf()
end

function Q7608901Trigger:PreTriggerIn()
    print("Q7608901Trigger - PreTriggerIn")
end

function Q7608901Trigger:LightUpTriggerIn()
    print("Q7608901Trigger - LightUpTriggerIn")
end

function Q7608901Trigger:TriggerOut()
    print("Q7608901Trigger - TriggerOut")
end

return Q7608901Trigger
