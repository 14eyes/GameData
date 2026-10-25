require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710104Trigger = class("Q7710104Trigger", GadgetActorProxy)
Q7710104Trigger.defaultAlias = "Q7710104Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710104Trigger:OnPostDataPrepare()
    print("Q7710104Trigger - OnPostDataPrepare")
    this = self
end

function Q7710104Trigger:OnPostComponentPrepare()
    print("Q7710104Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710104Trigger:TriggerIn()
    print("Q7710104Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710104)
    this:DestroySelf()
end

function Q7710104Trigger:PreTriggerIn()
    print("Q7710104Trigger - PreTriggerIn")
end

function Q7710104Trigger:LightUpTriggerIn()
    print("Q7710104Trigger - LightUpTriggerIn")
end

function Q7710104Trigger:TriggerOut()
    print("Q7710104Trigger - TriggerOut")
end

return Q7710104Trigger
