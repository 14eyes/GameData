require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7608930Trigger = class("Q7608930Trigger", GadgetActorProxy)
Q7608930Trigger.defaultAlias = "Q7608930Trigger"
local Q76089ClientConfig = require("Quest/Client/Q76089ClientConfig")

local this
local subIDs = Q76089ClientConfig.SubIDs
local npcs = Q76089ClientConfig.Npcs
local points = Q76089ClientConfig.Points

function Q7608930Trigger:OnPostDataPrepare()
    print("Q7608930Trigger - OnPostDataPrepare")
    this = self
end

function Q7608930Trigger:OnPostComponentPrepare()
    print("Q7608930Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76089)
end

function Q7608930Trigger:TriggerIn()
    print("Q7608930Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7608930)
    this:DestroySelf()
end

function Q7608930Trigger:PreTriggerIn()
    print("Q7608930Trigger - PreTriggerIn")
end

function Q7608930Trigger:LightUpTriggerIn()
    print("Q7608930Trigger - LightUpTriggerIn")
end

function Q7608930Trigger:TriggerOut()
    print("Q7608930Trigger - TriggerOut")
end

return Q7608930Trigger
