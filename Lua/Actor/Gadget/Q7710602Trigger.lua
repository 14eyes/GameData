require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710602Trigger = class("Q7710602Trigger", GadgetActorProxy)
Q7710602Trigger.defaultAlias = "Q7710602Trigger"
local Q77106ClientConfig = require("Quest/Client/Q77106ClientConfig")

local this
local subIDs = Q77106ClientConfig.SubIDs
local npcs = Q77106ClientConfig.Npcs
local points = Q77106ClientConfig.Points

function Q7710602Trigger:OnPostDataPrepare()
    print("Q7710602Trigger - OnPostDataPrepare")
    this = self
end

function Q7710602Trigger:OnPostComponentPrepare()
    print("Q7710602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77106)
end

function Q7710602Trigger:TriggerIn()
    print("Q7710602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710602)
    this:DestroySelf()
end

function Q7710602Trigger:PreTriggerIn()
    print("Q7710602Trigger - PreTriggerIn")
end

function Q7710602Trigger:LightUpTriggerIn()
    print("Q7710602Trigger - LightUpTriggerIn")
end

function Q7710602Trigger:TriggerOut()
    print("Q7710602Trigger - TriggerOut")
end

return Q7710602Trigger
