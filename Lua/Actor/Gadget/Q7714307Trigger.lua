require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714307Trigger = class("Q7714307Trigger", GadgetActorProxy)
Q7714307Trigger.defaultAlias = "Q7714307Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714307Trigger:OnPostDataPrepare()
    print("Q7714307Trigger - OnPostDataPrepare")
    this = self
end

function Q7714307Trigger:OnPostComponentPrepare()
    print("Q7714307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714307Trigger:TriggerIn()
    print("Q7714307Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714307)
    this:DestroySelf()
end

function Q7714307Trigger:PreTriggerIn()
    print("Q7714307Trigger - PreTriggerIn")
end

function Q7714307Trigger:LightUpTriggerIn()
    print("Q7714307Trigger - LightUpTriggerIn")
end

function Q7714307Trigger:TriggerOut()
    print("Q7714307Trigger - TriggerOut")
end

return Q7714307Trigger
