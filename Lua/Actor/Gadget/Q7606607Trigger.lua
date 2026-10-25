require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606607Trigger = class("Q7606607Trigger", GadgetActorProxy)
Q7606607Trigger.defaultAlias = "Q7606607Trigger"
local Q76066ClientConfig = require("Quest/Client/Q76066ClientConfig")

local this
local subIDs = Q76066ClientConfig.SubIDs
local points = Q76066ClientConfig.Points

function Q7606607Trigger:OnPostDataPrepare()
    print("Q7606607Trigger - OnPostDataPrepare")
    this = self
end

function Q7606607Trigger:OnPostComponentPrepare()
    print("Q7606607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76066)
end

function Q7606607Trigger:TriggerIn()
    print("Q7606607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606607)
    this:DestroySelf()
end

function Q7606607Trigger:PreTriggerIn()
    print("Q7606607Trigger - PreTriggerIn")
end

function Q7606607Trigger:LightUpTriggerIn()
    print("Q7606607Trigger - LightUpTriggerIn")
end

function Q7606607Trigger:TriggerOut()
    print("Q7606607Trigger - TriggerOut")
end

return Q7606607Trigger
