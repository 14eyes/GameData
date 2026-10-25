require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710137Trigger = class("Q7710137Trigger", GadgetActorProxy)
Q7710137Trigger.defaultAlias = "Q7710137Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710137Trigger:OnPostDataPrepare()
    print("Q7710137Trigger - OnPostDataPrepare")
    this = self
end

function Q7710137Trigger:OnPostComponentPrepare()
    print("Q7710137Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710137Trigger:TriggerIn()
    print("Q7710137Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710137})
    this:DestroySelf()
end

function Q7710137Trigger:PreTriggerIn()
    print("Q7710137Trigger - PreTriggerIn")
end

function Q7710137Trigger:LightUpTriggerIn()
    print("Q7710137Trigger - LightUpTriggerIn")
end

function Q7710137Trigger:TriggerOut()
    print("Q7710137Trigger - TriggerOut")
end

return Q7710137Trigger
