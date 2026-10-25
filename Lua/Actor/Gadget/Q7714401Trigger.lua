require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714401Trigger = class("Q7714401Trigger", GadgetActorProxy)
Q7714401Trigger.defaultAlias = "Q7714401Trigger"
local Q77144ClientConfig = require("Quest/Client/Q77144ClientConfig")

local this
local subIDs = Q77144ClientConfig.SubIDs
local npcs = Q77144ClientConfig.Npcs
local points = Q77144ClientConfig.Points

function Q7714401Trigger:OnPostDataPrepare()
    print("Q7714401Trigger - OnPostDataPrepare")
    this = self
end

function Q7714401Trigger:OnPostComponentPrepare()
    print("Q7714401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77144)
end

function Q7714401Trigger:TriggerIn()
    print("Q7714401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7714401})
    this:DestroySelf()
end

function Q7714401Trigger:PreTriggerIn()
    print("Q7714401Trigger - PreTriggerIn")
end

function Q7714401Trigger:LightUpTriggerIn()
    print("Q7714401Trigger - LightUpTriggerIn")
end

function Q7714401Trigger:TriggerOut()
    print("Q7714401Trigger - TriggerOut")
end

return Q7714401Trigger
