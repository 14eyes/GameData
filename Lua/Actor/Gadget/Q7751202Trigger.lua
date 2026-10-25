require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7751202Trigger = class("Q7751202Trigger", GadgetActorProxy)
Q7751202Trigger.defaultAlias = "Q7751202Trigger"
local Q77512ClientConfig = require("Quest/Client/Q77512ClientConfig")

local this
local subIDs = Q77512ClientConfig.SubIDs
local datas = Q77512ClientConfig.Datas

function Q7751202Trigger:OnPostDataPrepare()
    print("Q7751202Trigger - OnPostDataPrepare")
    this = self
end

function Q7751202Trigger:OnPostComponentPrepare()
    print("Q7751202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77512)
end

function Q7751202Trigger:TriggerIn()
    print("Q7751202Trigger - TriggerIn")
end

function Q7751202Trigger:PreTriggerIn()
    print("Q7751202Trigger - PreTriggerIn")
end

function Q7751202Trigger:LightUpTriggerIn()
    print("Q7751202Trigger - LightUpTriggerIn")
end

function Q7751202Trigger:TriggerOut()
    print("Q7751202Trigger - TriggerOut")
    actorMgr:GetActor("77512"):ClearNarratorTask()
    this:DestroySelf()
    actorUtils.FinishQuestWithParam({false}, {7751202})
end

return Q7751202Trigger
