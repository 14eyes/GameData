require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608922Trigger = class("Q7608922Trigger", GadgetActorProxy)
Q7608922Trigger.defaultAlias = "Q7608922Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608922Trigger:OnPostDataPrepare()
    print("Q7608922Trigger - OnPostDataPrepare")
    this = self
end

function Q7608922Trigger:OnPostComponentPrepare()
    print("Q7608922Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608922Trigger:TriggerIn()
    print("Q7608922Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608922)
    this:DestroySelf()
end

function Q7608922Trigger:PreTriggerIn()
    print("Q7608922Trigger - PreTriggerIn")
end

function Q7608922Trigger:LightUpTriggerIn()
    print("Q7608922Trigger - LightUpTriggerIn")
end

function Q7608922Trigger:TriggerOut()
    print("Q7608922Trigger - TriggerOut")
end

return Q7608922Trigger
