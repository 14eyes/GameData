require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425101Trigger = class("Q7425101Trigger", GadgetActorProxy)
Q7425101Trigger.defaultAlias = "Q7425101Trigger"
local Q74251ClientConfig = require("Quest/Client/Q74251ClientConfig")

local this
local subIDs = Q74251ClientConfig.SubIDs
local npcs = Q74251ClientConfig.Npcs
local points = Q74251ClientConfig.Points

function Q7425101Trigger:OnPostDataPrepare()
    print("Q7425101Trigger - OnPostDataPrepare")
    this = self
end

function Q7425101Trigger:OnPostComponentPrepare()
    print("Q7425101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74251)
end

function Q7425101Trigger:TriggerIn()
    print("Q7425101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425101})
    this:DestroySelf()
end

function Q7425101Trigger:PreTriggerIn()
    print("Q7425101Trigger - PreTriggerIn")
end

function Q7425101Trigger:LightUpTriggerIn()
    print("Q7425101Trigger - LightUpTriggerIn")
end

function Q7425101Trigger:TriggerOut()
    print("Q7425101Trigger - TriggerOut")
end

return Q7425101Trigger
