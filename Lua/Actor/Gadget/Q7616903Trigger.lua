require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616903Trigger = class("Q7616903Trigger", GadgetActorProxy)
Q7616903Trigger.defaultAlias = "Q7616903Trigger"
local Q76169ClientConfig = require("Quest/Client/Q76169ClientConfig")

local this
local subIDs = Q76169ClientConfig.SubIDs
local npcs = Q76169ClientConfig.Npcs
local points = Q76169ClientConfig.Points

function Q7616903Trigger:OnPostDataPrepare()
    print("Q7616903Trigger - OnPostDataPrepare")
    this = self
end

function Q7616903Trigger:OnPostComponentPrepare()
    print("Q7616903Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76169)
end

function Q7616903Trigger:TriggerIn()
    print("Q7616903Trigger - TriggerIn")
end

function Q7616903Trigger:PreTriggerIn()
    print("Q7616903Trigger - PreTriggerIn")
end

function Q7616903Trigger:LightUpTriggerIn()
    print("Q7616903Trigger - LightUpTriggerIn")
end

function Q7616903Trigger:TriggerOut()
    print("Q7616903Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7616903)
    this:DestroySelf()
end

return Q7616903Trigger
