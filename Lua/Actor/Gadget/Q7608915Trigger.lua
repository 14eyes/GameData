require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608915Trigger = class("Q7608915Trigger", GadgetActorProxy)
Q7608915Trigger.defaultAlias = "Q7608915Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608915Trigger:OnPostDataPrepare()
    print("Q7608915Trigger - OnPostDataPrepare")
    this = self
end

function Q7608915Trigger:OnPostComponentPrepare()
    print("Q7608915Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608915Trigger:TriggerIn()
    print("Q7608915Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608915)
    this:DestroySelf()
end

function Q7608915Trigger:PreTriggerIn()
    print("Q7608915Trigger - PreTriggerIn")
end

function Q7608915Trigger:LightUpTriggerIn()
    print("Q7608915Trigger - LightUpTriggerIn")
end

function Q7608915Trigger:TriggerOut()
    print("Q7608915Trigger - TriggerOut")
end

return Q7608915Trigger
