require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710809Trigger = class("Q7710809Trigger", GadgetActorProxy)
Q7710809Trigger.defaultAlias = "Q7710809Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710809Trigger:OnPostDataPrepare()
    print("Q7710809Trigger - OnPostDataPrepare")
    this = self
end

function Q7710809Trigger:OnPostComponentPrepare()
    print("Q7710809Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710809Trigger:TriggerIn()
    print("Q7710809Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710809)
end

function Q7710809Trigger:PreTriggerIn()
    print("Q7710809Trigger - PreTriggerIn")
end

function Q7710809Trigger:LightUpTriggerIn()
    print("Q7710809Trigger - LightUpTriggerIn")
end

function Q7710809Trigger:TriggerOut()
    print("Q7710809Trigger - TriggerOut")
end

return Q7710809Trigger
