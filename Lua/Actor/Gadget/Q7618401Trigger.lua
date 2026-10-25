require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618401Trigger = class("Q7618401Trigger", GadgetActorProxy)
Q7618401Trigger.defaultAlias = "Q7618401Trigger"
local Q76184ClientConfig = require("Quest/Client/Q76184ClientConfig")

local this
local subIDs = Q76184ClientConfig.SubIDs
local npcs = Q76184ClientConfig.Npcs
local points = Q76184ClientConfig.Points

function Q7618401Trigger:OnPostDataPrepare()
    print("Q7618401Trigger - OnPostDataPrepare")
    this = self
end

function Q7618401Trigger:OnPostComponentPrepare()
    print("Q7618401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76184)
end

function Q7618401Trigger:TriggerIn()
    print("Q7618401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618401})
    this:DestroySelf()
end

function Q7618401Trigger:PreTriggerIn()
    print("Q7618401Trigger - PreTriggerIn")
end

function Q7618401Trigger:LightUpTriggerIn()
    print("Q7618401Trigger - LightUpTriggerIn")
end

function Q7618401Trigger:TriggerOut()
    print("Q7618401Trigger - TriggerOut")
end

return Q7618401Trigger
