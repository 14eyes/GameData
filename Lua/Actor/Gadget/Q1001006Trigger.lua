require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001006Trigger = class("Q1001006Trigger", GadgetActorProxy)
Q1001006Trigger.defaultAlias = "Q1001006Trigger"
local Q10010ClientConfig = require("Quest/Client/Q10010ClientConfig")

local this
local subIDs = Q10010ClientConfig.SubIDs
local npcs = Q10010ClientConfig.Npcs
local points = Q10010ClientConfig.Points

function Q1001006Trigger:OnPostDataPrepare()
    print("Q1001006Trigger - OnPostDataPrepare")
    this = self
end

function Q1001006Trigger:OnPostComponentPrepare()
    print("Q1001006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10010)
end

function Q1001006Trigger:TriggerIn()
    print("Q1001006Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1001006)
    this:DestroySelf()
end

function Q1001006Trigger:PreTriggerIn()
    print("Q1001006Trigger - PreTriggerIn")
end

function Q1001006Trigger:LightUpTriggerIn()
    print("Q1001006Trigger - LightUpTriggerIn")
end

function Q1001006Trigger:TriggerOut()
    print("Q1001006Trigger - TriggerOut")
end

return Q1001006Trigger
