require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618002Trigger = class("Q7618002Trigger", GadgetActorProxy)
Q7618002Trigger.defaultAlias = "Q7618002Trigger"
local Q76180ClientConfig = require("Quest/Client/Q76180ClientConfig")

local this
local subIDs = Q76180ClientConfig.SubIDs
local npcs = Q76180ClientConfig.Npcs
local points = Q76180ClientConfig.Points

function Q7618002Trigger:OnPostDataPrepare()
    print("Q7618002Trigger - OnPostDataPrepare")
    this = self
end

function Q7618002Trigger:OnPostComponentPrepare()
    print("Q7618002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76180)
end

function Q7618002Trigger:TriggerIn()
    print("Q7618002Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618002})
    this:DestroySelf()
end

function Q7618002Trigger:PreTriggerIn()
    print("Q7618002Trigger - PreTriggerIn")
end

function Q7618002Trigger:LightUpTriggerIn()
    print("Q7618002Trigger - LightUpTriggerIn")
end

function Q7618002Trigger:TriggerOut()
    print("Q7618002Trigger - TriggerOut")
end

return Q7618002Trigger
