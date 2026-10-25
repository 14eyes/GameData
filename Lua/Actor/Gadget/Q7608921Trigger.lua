require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608921Trigger = class("Q7608921Trigger", GadgetActorProxy)
Q7608921Trigger.defaultAlias = "Q7608921Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608921Trigger:OnPostDataPrepare()
    print("Q7608921Trigger - OnPostDataPrepare")
    this = self
end

function Q7608921Trigger:OnPostComponentPrepare()
    print("Q7608921Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(3, 3, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608921Trigger:TriggerIn()
    print("Q7608921Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608921)
    this:DestroySelf()
end

function Q7608921Trigger:PreTriggerIn()
    print("Q7608921Trigger - PreTriggerIn")
end

function Q7608921Trigger:LightUpTriggerIn()
    print("Q7608921Trigger - LightUpTriggerIn")
end

function Q7608921Trigger:TriggerOut()
    print("Q7608921Trigger - TriggerOut")
end

return Q7608921Trigger
