require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710803Trigger = class("Q7710803Trigger", GadgetActorProxy)
Q7710803Trigger.defaultAlias = "Q7710803Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710803Trigger:OnPostDataPrepare()
    print("Q7710803Trigger - OnPostDataPrepare")
    this = self
end

function Q7710803Trigger:OnPostComponentPrepare()
    print("Q7710803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710803Trigger:TriggerIn()
    print("Q7710803Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710803)
end

function Q7710803Trigger:PreTriggerIn()
    print("Q7710803Trigger - PreTriggerIn")
end

function Q7710803Trigger:LightUpTriggerIn()
    print("Q7710803Trigger - LightUpTriggerIn")
end

function Q7710803Trigger:TriggerOut()
    print("Q7710803Trigger - TriggerOut")
end

return Q7710803Trigger
