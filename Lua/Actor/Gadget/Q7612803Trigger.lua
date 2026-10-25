require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612803Trigger = class("Q7612803Trigger", GadgetActorProxy)
Q7612803Trigger.defaultAlias = "Q7612803Trigger"
local Q76128ClientConfig = require("Quest/Client/Q76128ClientConfig")

local this
local subIDs = Q76128ClientConfig.SubIDs
local points = Q76128ClientConfig.Points

function Q7612803Trigger:OnPostDataPrepare()
    print("Q7612803Trigger - OnPostDataPrepare")
    this = self
end

function Q7612803Trigger:OnPostComponentPrepare()
    print("Q7612803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76128)
end

function Q7612803Trigger:TriggerIn()
    print("Q7612803Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612803)
    this:DestroySelf()
end

function Q7612803Trigger:PreTriggerIn()
    print("Q7612803Trigger - PreTriggerIn")
end

function Q7612803Trigger:LightUpTriggerIn()
    print("Q7612803Trigger - LightUpTriggerIn")
end

function Q7612803Trigger:TriggerOut()
    print("Q7612803Trigger - TriggerOut")
end

return Q7612803Trigger
