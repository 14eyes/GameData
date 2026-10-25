require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7503503Trigger = class("Q7503503Trigger", GadgetActorProxy)
Q7503503Trigger.defaultAlias = "Q7503503Trigger"
local Q75035ClientConfig = require("Quest/Client/Q75035ClientConfig")

local this
local subIDs = Q75035ClientConfig.SubIDs
local npcs = Q75035ClientConfig.Npcs
local points = Q75035ClientConfig.Points

function Q7503503Trigger:OnPostDataPrepare()
    print("Q7503503Trigger - OnPostDataPrepare")
    this = self
end

function Q7503503Trigger:OnPostComponentPrepare()
    print("Q7503503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20.882788, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75035)
end

function Q7503503Trigger:TriggerIn()
    print("Q7503503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7503503)
    this:DestroySelf()
end

function Q7503503Trigger:PreTriggerIn()
    print("Q7503503Trigger - PreTriggerIn")
end

function Q7503503Trigger:LightUpTriggerIn()
    print("Q7503503Trigger - LightUpTriggerIn")
end

function Q7503503Trigger:TriggerOut()
    print("Q7503503Trigger - TriggerOut")
end

return Q7503503Trigger
