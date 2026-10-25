require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600311Trigger = class("Q7600311Trigger", GadgetActorProxy)
Q7600311Trigger.defaultAlias = "Q7600311Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600311Trigger:OnPostDataPrepare()
    print("Q7600311Trigger - OnPostDataPrepare")
    this = self
end

function Q7600311Trigger:OnPostComponentPrepare()
    print("Q7600311Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600311Trigger:TriggerIn()
    print("Q7600311Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600311)
    this:DestroySelf()
end

function Q7600311Trigger:PreTriggerIn()
    print("Q7600311Trigger - PreTriggerIn")
end

function Q7600311Trigger:LightUpTriggerIn()
    print("Q7600311Trigger - LightUpTriggerIn")
end

function Q7600311Trigger:TriggerOut()
    print("Q7600311Trigger - TriggerOut")
end

return Q7600311Trigger
