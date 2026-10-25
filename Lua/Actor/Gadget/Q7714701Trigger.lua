require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714701Trigger = class("Q7714701Trigger", GadgetActorProxy)
Q7714701Trigger.defaultAlias = "Q7714701Trigger"
local Q77147ClientConfig = require("Quest/Client/Q77147ClientConfig")

local this
local subIDs = Q77147ClientConfig.SubIDs
local npcs = Q77147ClientConfig.Npcs
local points = Q77147ClientConfig.Points

function Q7714701Trigger:OnPostDataPrepare()
    print("Q7714701Trigger - OnPostDataPrepare")
    this = self
end

function Q7714701Trigger:OnPostComponentPrepare()
    print("Q7714701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77147)
end

function Q7714701Trigger:TriggerIn()
    print("Q7714701Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7714701})
    this:DestroySelf()
end

function Q7714701Trigger:PreTriggerIn()
    print("Q7714701Trigger - PreTriggerIn")
end

function Q7714701Trigger:LightUpTriggerIn()
    print("Q7714701Trigger - LightUpTriggerIn")
end

function Q7714701Trigger:TriggerOut()
    print("Q7714701Trigger - TriggerOut")
end

return Q7714701Trigger
