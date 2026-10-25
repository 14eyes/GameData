require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612801Trigger = class("Q7612801Trigger", GadgetActorProxy)
Q7612801Trigger.defaultAlias = "Q7612801Trigger"
local Q76128ClientConfig = require("Quest/Client/Q76128ClientConfig")

local this
local subIDs = Q76128ClientConfig.SubIDs
local points = Q76128ClientConfig.Points

function Q7612801Trigger:OnPostDataPrepare()
    print("Q7612801Trigger - OnPostDataPrepare")
    this = self
end

function Q7612801Trigger:OnPostComponentPrepare()
    print("Q7612801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76128)
end

function Q7612801Trigger:TriggerIn()
    print("Q7612801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612801)
    this:DestroySelf()
end

function Q7612801Trigger:PreTriggerIn()
    print("Q7612801Trigger - PreTriggerIn")
end

function Q7612801Trigger:LightUpTriggerIn()
    print("Q7612801Trigger - LightUpTriggerIn")
end

function Q7612801Trigger:TriggerOut()
    print("Q7612801Trigger - TriggerOut")
end

return Q7612801Trigger
