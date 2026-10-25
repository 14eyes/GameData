require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710812Trigger = class("Q7710812Trigger", GadgetActorProxy)
Q7710812Trigger.defaultAlias = "Q7710812Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710812Trigger:OnPostDataPrepare()
    print("Q7710812Trigger - OnPostDataPrepare")
    this = self
end

function Q7710812Trigger:OnPostComponentPrepare()
    print("Q7710812Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710812Trigger:TriggerIn()
    print("Q7710812Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710812)
    this:DestroySelf()
end

function Q7710812Trigger:PreTriggerIn()
    print("Q7710812Trigger - PreTriggerIn")
end

function Q7710812Trigger:LightUpTriggerIn()
    print("Q7710812Trigger - LightUpTriggerIn")
end

function Q7710812Trigger:TriggerOut()
    print("Q7710812Trigger - TriggerOut")
end

return Q7710812Trigger
