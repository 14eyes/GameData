require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520602Trigger = class("Q7520602Trigger", GadgetActorProxy)
Q7520602Trigger.defaultAlias = "Q7520602Trigger"
local Q75206ClientConfig = require("Quest/Client/Q75206ClientConfig")

local this
local subIDs = Q75206ClientConfig.SubIDs
local points = Q75206ClientConfig.Points

function Q7520602Trigger:OnPostDataPrepare()
    print("Q7520602Trigger - OnPostDataPrepare")
    this = self
end

function Q7520602Trigger:OnPostComponentPrepare()
    print("Q7520602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75206)
end

function Q7520602Trigger:TriggerIn()
    print("Q7520602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520602)
    this:DestroySelf()
end

function Q7520602Trigger:PreTriggerIn()
    print("Q7520602Trigger - PreTriggerIn")
end

function Q7520602Trigger:LightUpTriggerIn()
    print("Q7520602Trigger - LightUpTriggerIn")
end

function Q7520602Trigger:TriggerOut()
    print("Q7520602Trigger - TriggerOut")
end

return Q7520602Trigger
