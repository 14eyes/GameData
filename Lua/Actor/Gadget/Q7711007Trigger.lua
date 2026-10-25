require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711007Trigger = class("Q7711007Trigger", GadgetActorProxy)
Q7711007Trigger.defaultAlias = "Q7711007Trigger"
local Q77110ClientConfig = require("Quest/Client/Q77110ClientConfig")

local this
local subIDs = Q77110ClientConfig.SubIDs
local datas = Q77110ClientConfig.Datas
local npcs = Q77110ClientConfig.Npcs
local points = Q77110ClientConfig.Points

function Q7711007Trigger:OnPostDataPrepare()
    print("Q7711007Trigger - OnPostDataPrepare")
    this = self
end

function Q7711007Trigger:OnPostComponentPrepare()
    print("Q7711007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77110)
end

function Q7711007Trigger:TriggerIn()
    print("Q7711007Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711007})
    this:DestroySelf()
end

function Q7711007Trigger:PreTriggerIn()
    print("Q7711007Trigger - PreTriggerIn")
end

function Q7711007Trigger:LightUpTriggerIn()
    print("Q7711007Trigger - LightUpTriggerIn")
end

function Q7711007Trigger:TriggerOut()
    print("Q7711007Trigger - TriggerOut")
end

return Q7711007Trigger
