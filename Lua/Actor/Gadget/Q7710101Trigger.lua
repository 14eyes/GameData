require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710101Trigger = class("Q7710101Trigger", GadgetActorProxy)
Q7710101Trigger.defaultAlias = "Q7710101Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710101Trigger:OnPostDataPrepare()
    print("Q7710101Trigger - OnPostDataPrepare")
    this = self
end

function Q7710101Trigger:OnPostComponentPrepare()
    print("Q7710101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710101Trigger:TriggerIn()
    print("Q7710101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710101)
    this:DestroySelf()
end

function Q7710101Trigger:PreTriggerIn()
    print("Q7710101Trigger - PreTriggerIn")
end

function Q7710101Trigger:LightUpTriggerIn()
    print("Q7710101Trigger - LightUpTriggerIn")
end

function Q7710101Trigger:TriggerOut()
    print("Q7710101Trigger - TriggerOut")
end

return Q7710101Trigger
