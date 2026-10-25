require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616904Trigger = class("Q7616904Trigger", GadgetActorProxy)
Q7616904Trigger.defaultAlias = "Q7616904Trigger"
local Q76169ClientConfig = require("Quest/Client/Q76169ClientConfig")

local this
local subIDs = Q76169ClientConfig.SubIDs
local npcs = Q76169ClientConfig.Npcs
local points = Q76169ClientConfig.Points

function Q7616904Trigger:OnPostDataPrepare()
    print("Q7616904Trigger - OnPostDataPrepare")
    this = self
end

function Q7616904Trigger:OnPostComponentPrepare()
    print("Q7616904Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76169)
end

function Q7616904Trigger:TriggerIn()
    print("Q7616904Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616904)
    this:DestroySelf()
end

function Q7616904Trigger:PreTriggerIn()
    print("Q7616904Trigger - PreTriggerIn")
end

function Q7616904Trigger:LightUpTriggerIn()
    print("Q7616904Trigger - LightUpTriggerIn")
end

function Q7616904Trigger:TriggerOut()
    print("Q7616904Trigger - TriggerOut")
end

return Q7616904Trigger
