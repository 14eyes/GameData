require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526103Trigger = class("Q7526103Trigger", GadgetActorProxy)
Q7526103Trigger.defaultAlias = "Q7526103Trigger"
local Q75261ClientConfig = require("Quest/Client/Q75261ClientConfig")

local this
local subIDs = Q75261ClientConfig.SubIDs
local points = Q75261ClientConfig.Points

function Q7526103Trigger:OnPostDataPrepare()
    print("Q7526103Trigger - OnPostDataPrepare")
    this = self
end

function Q7526103Trigger:OnPostComponentPrepare()
    print("Q7526103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75261)
end

function Q7526103Trigger:TriggerIn()
    print("Q7526103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7526103)
    this:DestroySelf()
end

function Q7526103Trigger:PreTriggerIn()
    print("Q7526103Trigger - PreTriggerIn")
end

function Q7526103Trigger:LightUpTriggerIn()
    print("Q7526103Trigger - LightUpTriggerIn")
end

function Q7526103Trigger:TriggerOut()
    print("Q7526103Trigger - TriggerOut")
end

return Q7526103Trigger
