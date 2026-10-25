require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615101Trigger = class("Q7615101Trigger", GadgetActorProxy)
Q7615101Trigger.defaultAlias = "Q7615101Trigger"
local Q76151ClientConfig = require("Quest/Client/Q76151ClientConfig")

local this
local subIDs = Q76151ClientConfig.SubIDs
local points = Q76151ClientConfig.Points

function Q7615101Trigger:OnPostDataPrepare()
    print("Q7615101Trigger - OnPostDataPrepare")
    this = self
end

function Q7615101Trigger:OnPostComponentPrepare()
    print("Q7615101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(68.96738, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76151)
end

function Q7615101Trigger:TriggerIn()
    print("Q7615101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615101)
    this:DestroySelf()
end

function Q7615101Trigger:PreTriggerIn()
    print("Q7615101Trigger - PreTriggerIn")
end

function Q7615101Trigger:LightUpTriggerIn()
    print("Q7615101Trigger - LightUpTriggerIn")
end

function Q7615101Trigger:TriggerOut()
    print("Q7615101Trigger - TriggerOut")
end

return Q7615101Trigger
