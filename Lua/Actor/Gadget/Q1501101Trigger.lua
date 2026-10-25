require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501101Trigger = class("Q1501101Trigger", GadgetActorProxy)
Q1501101Trigger.defaultAlias = "Q1501101Trigger"
local Q15011ClientConfig = require("Quest/Client/Q15011ClientConfig")

local this
local subIDs = Q15011ClientConfig.SubIDs
local datas = Q15011ClientConfig.Datas

function Q1501101Trigger:OnPostDataPrepare()
    print("Q1501101Trigger - OnPostDataPrepare")
    this = self
end

function Q1501101Trigger:OnPostComponentPrepare()
    print("Q1501101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15011)
end

function Q1501101Trigger:TriggerIn()
    print("Q1501101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1501101)
    this:DestroySelf()
end

function Q1501101Trigger:PreTriggerIn()
    print("Q1501101Trigger - PreTriggerIn")
end

function Q1501101Trigger:LightUpTriggerIn()
    print("Q1501101Trigger - LightUpTriggerIn")
end

function Q1501101Trigger:TriggerOut()
    print("Q1501101Trigger - TriggerOut")
end

return Q1501101Trigger
