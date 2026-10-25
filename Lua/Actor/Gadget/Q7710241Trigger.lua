require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710241Trigger = class("Q7710241Trigger", GadgetActorProxy)
Q7710241Trigger.defaultAlias = "Q7710241Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710241Trigger:OnPostDataPrepare()
    print("Q7710241Trigger - OnPostDataPrepare")
    this = self
end

function Q7710241Trigger:OnPostComponentPrepare()
    print("Q7710241Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710241Trigger:TriggerIn()
    print("Q7710241Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710241})
    this:DestroySelf()
end

function Q7710241Trigger:PreTriggerIn()
    print("Q7710241Trigger - PreTriggerIn")
end

function Q7710241Trigger:LightUpTriggerIn()
    print("Q7710241Trigger - LightUpTriggerIn")
end

function Q7710241Trigger:TriggerOut()
    print("Q7710241Trigger - TriggerOut")
end

return Q7710241Trigger
