require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710603Trigger = class("Q7710603Trigger", GadgetActorProxy)
Q7710603Trigger.defaultAlias = "Q7710603Trigger"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710603Trigger:OnPostDataPrepare()
    print("Q7710603Trigger - OnPostDataPrepare")
    this = self
end

function Q7710603Trigger:OnPostComponentPrepare()
    print("Q7710603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710603Trigger:TriggerIn()
    print("Q7710603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710603)
    this:DestroySelf()
end

function Q7710603Trigger:PreTriggerIn()
    print("Q7710603Trigger - PreTriggerIn")
end

function Q7710603Trigger:LightUpTriggerIn()
    print("Q7710603Trigger - LightUpTriggerIn")
end

function Q7710603Trigger:TriggerOut()
    print("Q7710603Trigger - TriggerOut")
end

return Q7710603Trigger
