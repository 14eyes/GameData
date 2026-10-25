require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608924Trigger = class("Q7608924Trigger", GadgetActorProxy)
Q7608924Trigger.defaultAlias = "Q7608924Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608924Trigger:OnPostDataPrepare()
    print("Q7608924Trigger - OnPostDataPrepare")
    this = self
end

function Q7608924Trigger:OnPostComponentPrepare()
    print("Q7608924Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608924Trigger:TriggerIn()
    print("Q7608924Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608924)
    this:DestroySelf()
end

function Q7608924Trigger:PreTriggerIn()
    print("Q7608924Trigger - PreTriggerIn")
end

function Q7608924Trigger:LightUpTriggerIn()
    print("Q7608924Trigger - LightUpTriggerIn")
end

function Q7608924Trigger:TriggerOut()
    print("Q7608924Trigger - TriggerOut")
end

return Q7608924Trigger
