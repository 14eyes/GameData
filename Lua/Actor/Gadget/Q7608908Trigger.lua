require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608908Trigger = class("Q7608908Trigger", GadgetActorProxy)
Q7608908Trigger.defaultAlias = "Q7608908Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608908Trigger:OnPostDataPrepare()
    print("Q7608908Trigger - OnPostDataPrepare")
    this = self
end

function Q7608908Trigger:OnPostComponentPrepare()
    print("Q7608908Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608908Trigger:TriggerIn()
    print("Q7608908Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608908)
    this:DestroySelf()
end

function Q7608908Trigger:PreTriggerIn()
    print("Q7608908Trigger - PreTriggerIn")
end

function Q7608908Trigger:LightUpTriggerIn()
    print("Q7608908Trigger - LightUpTriggerIn")
end

function Q7608908Trigger:TriggerOut()
    print("Q7608908Trigger - TriggerOut")
end

return Q7608908Trigger
