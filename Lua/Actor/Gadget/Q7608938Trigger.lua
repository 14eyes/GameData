require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608938Trigger = class("Q7608938Trigger", GadgetActorProxy)
Q7608938Trigger.defaultAlias = "Q7608938Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608938Trigger:OnPostDataPrepare()
    print("Q7608938Trigger - OnPostDataPrepare")
    this = self
end

function Q7608938Trigger:OnPostComponentPrepare()
    print("Q7608938Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608938Trigger:TriggerIn()
    print("Q7608938Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608938)
    this:DestroySelf()
end

function Q7608938Trigger:PreTriggerIn()
    print("Q7608938Trigger - PreTriggerIn")
end

function Q7608938Trigger:LightUpTriggerIn()
    print("Q7608938Trigger - LightUpTriggerIn")
end

function Q7608938Trigger:TriggerOut()
    print("Q7608938Trigger - TriggerOut")
end

return Q7608938Trigger
