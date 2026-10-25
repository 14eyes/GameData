require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615102Trigger = class("Q7615102Trigger", GadgetActorProxy)
Q7615102Trigger.defaultAlias = "Q7615102Trigger"
local Q76151ClientConfig = require("Quest/Client/Q76151ClientConfig")

local this
local subIDs = Q76151ClientConfig.SubIDs
local points = Q76151ClientConfig.Points

function Q7615102Trigger:OnPostDataPrepare()
    print("Q7615102Trigger - OnPostDataPrepare")
    this = self
end

function Q7615102Trigger:OnPostComponentPrepare()
    print("Q7615102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76151)
end

function Q7615102Trigger:TriggerIn()
    print("Q7615102Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615102)
    this:DestroySelf()
end

function Q7615102Trigger:PreTriggerIn()
    print("Q7615102Trigger - PreTriggerIn")
end

function Q7615102Trigger:LightUpTriggerIn()
    print("Q7615102Trigger - LightUpTriggerIn")
end

function Q7615102Trigger:TriggerOut()
    print("Q7615102Trigger - TriggerOut")
end

return Q7615102Trigger
