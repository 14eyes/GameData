require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711006Trigger = class("Q7711006Trigger", GadgetActorProxy)
Q7711006Trigger.defaultAlias = "Q7711006Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711006Trigger:OnPostDataPrepare()
    print("Q7711006Trigger - OnPostDataPrepare")
    this = self
end

function Q7711006Trigger:OnPostComponentPrepare()
    print("Q7711006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711006Trigger:TriggerIn()
    print("Q7711006Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711006)
    this:DestroySelf()
end

function Q7711006Trigger:PreTriggerIn()
    print("Q7711006Trigger - PreTriggerIn")
end

function Q7711006Trigger:LightUpTriggerIn()
    print("Q7711006Trigger - LightUpTriggerIn")
end

function Q7711006Trigger:TriggerOut()
    print("Q7711006Trigger - TriggerOut")
end

return Q7711006Trigger
