require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600315Trigger = class("Q7600315Trigger", GadgetActorProxy)
Q7600315Trigger.defaultAlias = "Q7600315Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600315Trigger:OnPostDataPrepare()
    print("Q7600315Trigger - OnPostDataPrepare")
    this = self
end

function Q7600315Trigger:OnPostComponentPrepare()
    print("Q7600315Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600315Trigger:TriggerIn()
    print("Q7600315Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600315)
    this:DestroySelf()
end

function Q7600315Trigger:PreTriggerIn()
    print("Q7600315Trigger - PreTriggerIn")
end

function Q7600315Trigger:LightUpTriggerIn()
    print("Q7600315Trigger - LightUpTriggerIn")
end

function Q7600315Trigger:TriggerOut()
    print("Q7600315Trigger - TriggerOut")
end

return Q7600315Trigger
