require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710107Trigger = class("Q7710107Trigger", GadgetActorProxy)
Q7710107Trigger.defaultAlias = "Q7710107Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710107Trigger:OnPostDataPrepare()
    print("Q7710107Trigger - OnPostDataPrepare")
    this = self
end

function Q7710107Trigger:OnPostComponentPrepare()
    print("Q7710107Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710107Trigger:TriggerIn()
    print("Q7710107Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710107)
    this:DestroySelf()
end

function Q7710107Trigger:PreTriggerIn()
    print("Q7710107Trigger - PreTriggerIn")
end

function Q7710107Trigger:LightUpTriggerIn()
    print("Q7710107Trigger - LightUpTriggerIn")
end

function Q7710107Trigger:TriggerOut()
    print("Q7710107Trigger - TriggerOut")
end

return Q7710107Trigger
