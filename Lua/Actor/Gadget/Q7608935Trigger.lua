require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608935Trigger = class("Q7608935Trigger", GadgetActorProxy)
Q7608935Trigger.defaultAlias = "Q7608935Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608935Trigger:OnPostDataPrepare()
    print("Q7608935Trigger - OnPostDataPrepare")
    this = self
end

function Q7608935Trigger:OnPostComponentPrepare()
    print("Q7608935Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608935Trigger:TriggerIn()
    print("Q7608935Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608935)
    this:DestroySelf()
end

function Q7608935Trigger:PreTriggerIn()
    print("Q7608935Trigger - PreTriggerIn")
end

function Q7608935Trigger:LightUpTriggerIn()
    print("Q7608935Trigger - LightUpTriggerIn")
end

function Q7608935Trigger:TriggerOut()
    print("Q7608935Trigger - TriggerOut")
end

return Q7608935Trigger
