require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606602Trigger = class("Q7606602Trigger", GadgetActorProxy)
Q7606602Trigger.defaultAlias = "Q7606602Trigger"
local Q76066ClientConfig = require("Quest/Client/Q76066ClientConfig")

local this
local subIDs = Q76066ClientConfig.SubIDs
local points = Q76066ClientConfig.Points

function Q7606602Trigger:OnPostDataPrepare()
    print("Q7606602Trigger - OnPostDataPrepare")
    this = self
end

function Q7606602Trigger:OnPostComponentPrepare()
    print("Q7606602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76066)
end

function Q7606602Trigger:TriggerIn()
    print("Q7606602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606602)
    this:DestroySelf()
end

function Q7606602Trigger:PreTriggerIn()
    print("Q7606602Trigger - PreTriggerIn")
end

function Q7606602Trigger:LightUpTriggerIn()
    print("Q7606602Trigger - LightUpTriggerIn")
end

function Q7606602Trigger:TriggerOut()
    print("Q7606602Trigger - TriggerOut")
end

return Q7606602Trigger
