require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710805Trigger = class("Q7710805Trigger", GadgetActorProxy)
Q7710805Trigger.defaultAlias = "Q7710805Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710805Trigger:OnPostDataPrepare()
    print("Q7710805Trigger - OnPostDataPrepare")
    this = self
end

function Q7710805Trigger:OnPostComponentPrepare()
    print("Q7710805Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(79.22338, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710805Trigger:TriggerIn()
    print("Q7710805Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710805)
end

function Q7710805Trigger:PreTriggerIn()
    print("Q7710805Trigger - PreTriggerIn")
end

function Q7710805Trigger:LightUpTriggerIn()
    print("Q7710805Trigger - LightUpTriggerIn")
end

function Q7710805Trigger:TriggerOut()
    print("Q7710805Trigger - TriggerOut")
end

return Q7710805Trigger
