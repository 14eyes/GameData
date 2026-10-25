require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7721101Trigger = class("Q7721101Trigger", GadgetActorProxy)
Q7721101Trigger.defaultAlias = "Q7721101Trigger"
local Q77211ClientConfig = require("Quest/Client/Q77211ClientConfig")

local this
local subIDs = Q77211ClientConfig.SubIDs
local npcs = Q77211ClientConfig.Npcs
local points = Q77211ClientConfig.Points

function Q7721101Trigger:OnPostDataPrepare()
    print("Q7721101Trigger - OnPostDataPrepare")
    this = self
end

function Q7721101Trigger:OnPostComponentPrepare()
    print("Q7721101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77211)
end

function Q7721101Trigger:TriggerIn()
    print("Q7721101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7721101})
    this:DestroySelf()
end

function Q7721101Trigger:PreTriggerIn()
    print("Q7721101Trigger - PreTriggerIn")
end

function Q7721101Trigger:LightUpTriggerIn()
    print("Q7721101Trigger - LightUpTriggerIn")
end

function Q7721101Trigger:TriggerOut()
    print("Q7721101Trigger - TriggerOut")
end

return Q7721101Trigger
