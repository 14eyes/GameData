require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608932Trigger = class("Q7608932Trigger", GadgetActorProxy)
Q7608932Trigger.defaultAlias = "Q7608932Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608932Trigger:OnPostDataPrepare()
    print("Q7608932Trigger - OnPostDataPrepare")
    this = self
end

function Q7608932Trigger:OnPostComponentPrepare()
    print("Q7608932Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608932Trigger:TriggerIn()
    print("Q7608932Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608932)
    this:DestroySelf()
end

function Q7608932Trigger:PreTriggerIn()
    print("Q7608932Trigger - PreTriggerIn")
end

function Q7608932Trigger:LightUpTriggerIn()
    print("Q7608932Trigger - LightUpTriggerIn")
end

function Q7608932Trigger:TriggerOut()
    print("Q7608932Trigger - TriggerOut")
end

return Q7608932Trigger
