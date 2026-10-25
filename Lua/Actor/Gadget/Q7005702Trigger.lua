require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005702Trigger = class("Q7005702Trigger", GadgetActorProxy)
Q7005702Trigger.defaultAlias = "Q7005702Trigger"
local Q70057ClientConfig = require("Quest/Client/Q70057ClientConfig")

local this
local subIDs = Q70057ClientConfig.SubIDs
local points = Q70057ClientConfig.Points

function Q7005702Trigger:OnPostDataPrepare()
    print("Q7005702Trigger - OnPostDataPrepare")
    this = self
end

function Q7005702Trigger:OnPostComponentPrepare()
    print("Q7005702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70057)
end

function Q7005702Trigger:TriggerIn()
    print("Q7005702Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005702)
    this:DestroySelf()
end

function Q7005702Trigger:PreTriggerIn()
    print("Q7005702Trigger - PreTriggerIn")
end

function Q7005702Trigger:LightUpTriggerIn()
    print("Q7005702Trigger - LightUpTriggerIn")
end

function Q7005702Trigger:TriggerOut()
    print("Q7005702Trigger - TriggerOut")
end

return Q7005702Trigger
