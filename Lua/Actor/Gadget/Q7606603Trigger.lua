require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606603Trigger = class("Q7606603Trigger", GadgetActorProxy)
Q7606603Trigger.defaultAlias = "Q7606603Trigger"
local Q76066ClientConfig = require("Quest/Client/Q76066ClientConfig")

local this
local subIDs = Q76066ClientConfig.SubIDs
local points = Q76066ClientConfig.Points

function Q7606603Trigger:OnPostDataPrepare()
    print("Q7606603Trigger - OnPostDataPrepare")
    this = self
end

function Q7606603Trigger:OnPostComponentPrepare()
    print("Q7606603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76066)
end

function Q7606603Trigger:TriggerIn()
    print("Q7606603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606603)
    this:DestroySelf()
end

function Q7606603Trigger:PreTriggerIn()
    print("Q7606603Trigger - PreTriggerIn")
end

function Q7606603Trigger:LightUpTriggerIn()
    print("Q7606603Trigger - LightUpTriggerIn")
end

function Q7606603Trigger:TriggerOut()
    print("Q7606603Trigger - TriggerOut")
end

return Q7606603Trigger
