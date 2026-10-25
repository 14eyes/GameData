require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606605Trigger = class("Q7606605Trigger", GadgetActorProxy)
Q7606605Trigger.defaultAlias = "Q7606605Trigger"
local Q76066ClientConfig = require("Quest/Client/Q76066ClientConfig")

local this
local subIDs = Q76066ClientConfig.SubIDs
local points = Q76066ClientConfig.Points

function Q7606605Trigger:OnPostDataPrepare()
    print("Q7606605Trigger - OnPostDataPrepare")
    this = self
end

function Q7606605Trigger:OnPostComponentPrepare()
    print("Q7606605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76066)
end

function Q7606605Trigger:TriggerIn()
    print("Q7606605Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606605)
    this:DestroySelf()
end

function Q7606605Trigger:PreTriggerIn()
    print("Q7606605Trigger - PreTriggerIn")
end

function Q7606605Trigger:LightUpTriggerIn()
    print("Q7606605Trigger - LightUpTriggerIn")
end

function Q7606605Trigger:TriggerOut()
    print("Q7606605Trigger - TriggerOut")
end

return Q7606605Trigger
