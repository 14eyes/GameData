require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710816Trigger = class("Q7710816Trigger", GadgetActorProxy)
Q7710816Trigger.defaultAlias = "Q7710816Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710816Trigger:OnPostDataPrepare()
    print("Q7710816Trigger - OnPostDataPrepare")
    this = self
end

function Q7710816Trigger:OnPostComponentPrepare()
    print("Q7710816Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710816Trigger:TriggerIn()
    print("Q7710816Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710816)
    this:DestroySelf()
end

function Q7710816Trigger:PreTriggerIn()
    print("Q7710816Trigger - PreTriggerIn")
end

function Q7710816Trigger:LightUpTriggerIn()
    print("Q7710816Trigger - LightUpTriggerIn")
end

function Q7710816Trigger:TriggerOut()
    print("Q7710816Trigger - TriggerOut")
end

return Q7710816Trigger
