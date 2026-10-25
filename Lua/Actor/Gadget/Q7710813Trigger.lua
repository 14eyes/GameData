require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710813Trigger = class("Q7710813Trigger", GadgetActorProxy)
Q7710813Trigger.defaultAlias = "Q7710813Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710813Trigger:OnPostDataPrepare()
    print("Q7710813Trigger - OnPostDataPrepare")
    this = self
end

function Q7710813Trigger:OnPostComponentPrepare()
    print("Q7710813Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710813Trigger:TriggerIn()
    print("Q7710813Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710813)
    this:DestroySelf()
end

function Q7710813Trigger:PreTriggerIn()
    print("Q7710813Trigger - PreTriggerIn")
end

function Q7710813Trigger:LightUpTriggerIn()
    print("Q7710813Trigger - LightUpTriggerIn")
end

function Q7710813Trigger:TriggerOut()
    print("Q7710813Trigger - TriggerOut")
end

return Q7710813Trigger
