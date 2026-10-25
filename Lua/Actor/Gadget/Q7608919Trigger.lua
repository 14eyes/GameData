require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608919Trigger = class("Q7608919Trigger", GadgetActorProxy)
Q7608919Trigger.defaultAlias = "Q7608919Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608919Trigger:OnPostDataPrepare()
    print("Q7608919Trigger - OnPostDataPrepare")
    this = self
end

function Q7608919Trigger:OnPostComponentPrepare()
    print("Q7608919Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608919Trigger:TriggerIn()
    print("Q7608919Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608939)
    this:DestroySelf()
end

function Q7608919Trigger:PreTriggerIn()
    print("Q7608919Trigger - PreTriggerIn")
end

function Q7608919Trigger:LightUpTriggerIn()
    print("Q7608919Trigger - LightUpTriggerIn")
end

function Q7608919Trigger:TriggerOut()
    print("Q7608919Trigger - TriggerOut")
end

return Q7608919Trigger
