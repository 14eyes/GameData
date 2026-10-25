require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700402Trigger = class("Q700402Trigger", GadgetActorProxy)
Q700402Trigger.defaultAlias = "Q700402Trigger"
local Q7004ClientConfig = require("Quest/Client/Q7004ClientConfig")

local this
local subIDs = Q7004ClientConfig.SubIDs
local datas = Q7004ClientConfig.Datas
local points = Q7004ClientConfig.Points

function Q700402Trigger:OnPostDataPrepare()
    print("Q700402Trigger - OnPostDataPrepare")
    this = self
end

function Q700402Trigger:OnPostComponentPrepare()
    print("Q700402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7004)
end

function Q700402Trigger:TriggerIn()
    print("Q700402Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {700402})
    this:DestroySelf()
end

function Q700402Trigger:PreTriggerIn()
    print("Q700402Trigger - PreTriggerIn")
end

function Q700402Trigger:LightUpTriggerIn()
    print("Q700402Trigger - LightUpTriggerIn")
end

function Q700402Trigger:TriggerOut()
    print("Q700402Trigger - TriggerOut")
end

return Q700402Trigger
