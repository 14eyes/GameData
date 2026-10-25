require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600302Trigger = class("Q7600302Trigger", GadgetActorProxy)
Q7600302Trigger.defaultAlias = "Q7600302Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600302Trigger:OnPostDataPrepare()
    print("Q7600302Trigger - OnPostDataPrepare")
    this = self
end

function Q7600302Trigger:OnPostComponentPrepare()
    print("Q7600302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600302Trigger:TriggerIn()
    print("Q7600302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600302)
    this:DestroySelf()
end

function Q7600302Trigger:PreTriggerIn()
    print("Q7600302Trigger - PreTriggerIn")
end

function Q7600302Trigger:LightUpTriggerIn()
    print("Q7600302Trigger - LightUpTriggerIn")
end

function Q7600302Trigger:TriggerOut()
    print("Q7600302Trigger - TriggerOut")
end

return Q7600302Trigger
