require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615103Trigger = class("Q7615103Trigger", GadgetActorProxy)
Q7615103Trigger.defaultAlias = "Q7615103Trigger"
local Q76151ClientConfig = require("Quest/Client/Q76151ClientConfig")

local this
local subIDs = Q76151ClientConfig.SubIDs
local points = Q76151ClientConfig.Points

function Q7615103Trigger:OnPostDataPrepare()
    print("Q7615103Trigger - OnPostDataPrepare")
    this = self
end

function Q7615103Trigger:OnPostComponentPrepare()
    print("Q7615103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(68.325554, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76151)
end

function Q7615103Trigger:TriggerIn()
    print("Q7615103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615103)
    this:DestroySelf()
end

function Q7615103Trigger:PreTriggerIn()
    print("Q7615103Trigger - PreTriggerIn")
end

function Q7615103Trigger:LightUpTriggerIn()
    print("Q7615103Trigger - LightUpTriggerIn")
end

function Q7615103Trigger:TriggerOut()
    print("Q7615103Trigger - TriggerOut")
end

return Q7615103Trigger
