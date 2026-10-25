require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600331Trigger = class("Q7600331Trigger", GadgetActorProxy)
Q7600331Trigger.defaultAlias = "Q7600331Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600331Trigger:OnPostDataPrepare()
    print("Q7600331Trigger - OnPostDataPrepare")
    this = self
end

function Q7600331Trigger:OnPostComponentPrepare()
    print("Q7600331Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600331Trigger:TriggerIn()
    print("Q7600331Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600331)
    this:DestroySelf()
end

function Q7600331Trigger:PreTriggerIn()
    print("Q7600331Trigger - PreTriggerIn")
end

function Q7600331Trigger:LightUpTriggerIn()
    print("Q7600331Trigger - LightUpTriggerIn")
end

function Q7600331Trigger:TriggerOut()
    print("Q7600331Trigger - TriggerOut")
end

return Q7600331Trigger
