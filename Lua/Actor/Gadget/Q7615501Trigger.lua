require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615501Trigger = class("Q7615501Trigger", GadgetActorProxy)
Q7615501Trigger.defaultAlias = "Q7615501Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615501Trigger:OnPostDataPrepare()
    print("Q7615501Trigger - OnPostDataPrepare")
    this = self
end

function Q7615501Trigger:OnPostComponentPrepare()
    print("Q7615501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615501Trigger:TriggerIn()
    print("Q7615501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615501)
    this:DestroySelf()
end

function Q7615501Trigger:PreTriggerIn()
    print("Q7615501Trigger - PreTriggerIn")
end

function Q7615501Trigger:LightUpTriggerIn()
    print("Q7615501Trigger - LightUpTriggerIn")
end

function Q7615501Trigger:TriggerOut()
    print("Q7615501Trigger - TriggerOut")
end

return Q7615501Trigger
