require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612404Trigger = class("Q7612404Trigger", GadgetActorProxy)
Q7612404Trigger.defaultAlias = "Q7612404Trigger"
local Q76124ClientConfig = require("Quest/Client/Q76124ClientConfig")

local this
local subIDs = Q76124ClientConfig.SubIDs
local npcs = Q76124ClientConfig.Npcs
local points = Q76124ClientConfig.Points

function Q7612404Trigger:OnPostDataPrepare()
    print("Q7612404Trigger - OnPostDataPrepare")
    this = self
end

function Q7612404Trigger:OnPostComponentPrepare()
    print("Q7612404Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76124)
end

function Q7612404Trigger:TriggerIn()
    print("Q7612404Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7612404})
    this:DestroySelf()
end

function Q7612404Trigger:PreTriggerIn()
    print("Q7612404Trigger - PreTriggerIn")
end

function Q7612404Trigger:LightUpTriggerIn()
    print("Q7612404Trigger - LightUpTriggerIn")
end

function Q7612404Trigger:TriggerOut()
    print("Q7612404Trigger - TriggerOut")
end

return Q7612404Trigger
