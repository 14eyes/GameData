require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616303Trigger = class("Q7616303Trigger", GadgetActorProxy)
Q7616303Trigger.defaultAlias = "Q7616303Trigger"
local Q76163ClientConfig = require("Quest/Client/Q76163ClientConfig")

local this
local subIDs = Q76163ClientConfig.SubIDs
local npcs = Q76163ClientConfig.Npcs
local points = Q76163ClientConfig.Points

function Q7616303Trigger:OnPostDataPrepare()
    print("Q7616303Trigger - OnPostDataPrepare")
    this = self
end

function Q7616303Trigger:OnPostComponentPrepare()
    print("Q7616303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76163)
end

function Q7616303Trigger:TriggerIn()
    print("Q7616303Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616303)
    this:DestroySelf()
end

function Q7616303Trigger:PreTriggerIn()
    print("Q7616303Trigger - PreTriggerIn")
end

function Q7616303Trigger:LightUpTriggerIn()
    print("Q7616303Trigger - LightUpTriggerIn")
end

function Q7616303Trigger:TriggerOut()
    print("Q7616303Trigger - TriggerOut")
end

return Q7616303Trigger
