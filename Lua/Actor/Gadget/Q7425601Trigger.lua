require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425601Trigger = class("Q7425601Trigger", GadgetActorProxy)
Q7425601Trigger.defaultAlias = "Q7425601Trigger"
local Q74256ClientConfig = require("Quest/Client/Q74256ClientConfig")

local this
local subIDs = Q74256ClientConfig.SubIDs
local npcs = Q74256ClientConfig.Npcs
local points = Q74256ClientConfig.Points

function Q7425601Trigger:OnPostDataPrepare()
    print("Q7425601Trigger - OnPostDataPrepare")
    this = self
end

function Q7425601Trigger:OnPostComponentPrepare()
    print("Q7425601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74256)
end

function Q7425601Trigger:TriggerIn()
    print("Q7425601Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425601})
    this:DestroySelf()
end

function Q7425601Trigger:PreTriggerIn()
    print("Q7425601Trigger - PreTriggerIn")
end

function Q7425601Trigger:LightUpTriggerIn()
    print("Q7425601Trigger - LightUpTriggerIn")
end

function Q7425601Trigger:TriggerOut()
    print("Q7425601Trigger - TriggerOut")
end

return Q7425601Trigger
