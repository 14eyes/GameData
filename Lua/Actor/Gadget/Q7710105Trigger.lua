require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710105Trigger = class("Q7710105Trigger", GadgetActorProxy)
Q7710105Trigger.defaultAlias = "Q7710105Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710105Trigger:OnPostDataPrepare()
    print("Q7710105Trigger - OnPostDataPrepare")
    this = self
end

function Q7710105Trigger:OnPostComponentPrepare()
    print("Q7710105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710105Trigger:TriggerIn()
    print("Q7710105Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710105)
    this:DestroySelf()
end

function Q7710105Trigger:PreTriggerIn()
    print("Q7710105Trigger - PreTriggerIn")
end

function Q7710105Trigger:LightUpTriggerIn()
    print("Q7710105Trigger - LightUpTriggerIn")
end

function Q7710105Trigger:TriggerOut()
    print("Q7710105Trigger - TriggerOut")
end

return Q7710105Trigger
