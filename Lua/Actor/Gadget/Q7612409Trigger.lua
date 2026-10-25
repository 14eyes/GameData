require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612409Trigger = class("Q7612409Trigger", GadgetActorProxy)
Q7612409Trigger.defaultAlias = "Q7612409Trigger"
local Q76124ClientConfig = require("Quest/Client/Q76124ClientConfig")

local this
local subIDs = Q76124ClientConfig.SubIDs
local npcs = Q76124ClientConfig.Npcs
local points = Q76124ClientConfig.Points

function Q7612409Trigger:OnPostDataPrepare()
    print("Q7612409Trigger - OnPostDataPrepare")
    this = self
end

function Q7612409Trigger:OnPostComponentPrepare()
    print("Q7612409Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76124)
end

function Q7612409Trigger:TriggerIn()
    print("Q7612409Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612409)
    this:DestroySelf()
end

function Q7612409Trigger:PreTriggerIn()
    print("Q7612409Trigger - PreTriggerIn")
end

function Q7612409Trigger:LightUpTriggerIn()
    print("Q7612409Trigger - LightUpTriggerIn")
end

function Q7612409Trigger:TriggerOut()
    print("Q7612409Trigger - TriggerOut")
end

return Q7612409Trigger
