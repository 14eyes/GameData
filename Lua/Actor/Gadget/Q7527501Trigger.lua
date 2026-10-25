require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7527501Trigger = class("Q7527501Trigger", GadgetActorProxy)
Q7527501Trigger.defaultAlias = "Q7527501Trigger"
local Q75275ClientConfig = require("Quest/Client/Q75275ClientConfig")

local this
local subIDs = Q75275ClientConfig.SubIDs
local points = Q75275ClientConfig.Points

function Q7527501Trigger:OnPostDataPrepare()
    print("Q7527501Trigger - OnPostDataPrepare")
    this = self
end

function Q7527501Trigger:OnPostComponentPrepare()
    print("Q7527501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75275)
end

function Q7527501Trigger:TriggerIn()
    print("Q7527501Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7527501)
    this:DestroySelf()
end

function Q7527501Trigger:PreTriggerIn()
    print("Q7527501Trigger - PreTriggerIn")
end

function Q7527501Trigger:LightUpTriggerIn()
    print("Q7527501Trigger - LightUpTriggerIn")
end

function Q7527501Trigger:TriggerOut()
    print("Q7527501Trigger - TriggerOut")
end

return Q7527501Trigger
