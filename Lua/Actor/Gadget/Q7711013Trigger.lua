require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711013Trigger = class("Q7711013Trigger", GadgetActorProxy)
Q7711013Trigger.defaultAlias = "Q7711013Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711013Trigger:OnPostDataPrepare()
    print("Q7711013Trigger - OnPostDataPrepare")
    this = self
end

function Q7711013Trigger:OnPostComponentPrepare()
    print("Q7711013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711013Trigger:TriggerIn()
    print("Q7711013Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711013)
    this:DestroySelf()
end

function Q7711013Trigger:PreTriggerIn()
    print("Q7711013Trigger - PreTriggerIn")
end

function Q7711013Trigger:LightUpTriggerIn()
    print("Q7711013Trigger - LightUpTriggerIn")
end

function Q7711013Trigger:TriggerOut()
    print("Q7711013Trigger - TriggerOut")
end

return Q7711013Trigger
