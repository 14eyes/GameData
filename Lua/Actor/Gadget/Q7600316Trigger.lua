require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600316Trigger = class("Q7600316Trigger", GadgetActorProxy)
Q7600316Trigger.defaultAlias = "Q7600316Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600316Trigger:OnPostDataPrepare()
    print("Q7600316Trigger - OnPostDataPrepare")
    this = self
end

function Q7600316Trigger:OnPostComponentPrepare()
    print("Q7600316Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 12, 12, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600316Trigger:TriggerIn()
    print("Q7600316Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600316)
    this:DestroySelf()
end

function Q7600316Trigger:PreTriggerIn()
    print("Q7600316Trigger - PreTriggerIn")
end

function Q7600316Trigger:LightUpTriggerIn()
    print("Q7600316Trigger - LightUpTriggerIn")
end

function Q7600316Trigger:TriggerOut()
    print("Q7600316Trigger - TriggerOut")
end

return Q7600316Trigger
