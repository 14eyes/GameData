require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504903Trigger = class("Q7504903Trigger", GadgetActorProxy)
Q7504903Trigger.defaultAlias = "Q7504903Trigger"
local Q75049ClientConfig = require("Quest/Client/Q75049ClientConfig")

local this
local subIDs = Q75049ClientConfig.SubIDs
local npcs = Q75049ClientConfig.Npcs
local points = Q75049ClientConfig.Points

function Q7504903Trigger:OnPostDataPrepare()
    print("[MainId: 75049][Trigger: Q7504903Trigger] OnPostDataPrepare")
    this = self
end

function Q7504903Trigger:OnPostComponentPrepare()
    print("[MainId: 75049][Trigger: Q7504903Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75049)
end

function Q7504903Trigger:TriggerIn()
    print("[MainId: 75049][Trigger: Q7504903Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7504903)
    this:DestroySelf()
end

function Q7504903Trigger:PreTriggerIn()
    print("[MainId: 75049][Trigger: Q7504903Trigger] PreTriggerIn")
end

function Q7504903Trigger:LightUpTriggerIn()
    print("[MainId: 75049][Trigger: Q7504903Trigger] LightUpTriggerIn")
end

function Q7504903Trigger:TriggerOut()
    print("[MainId: 75049][Trigger: Q7504903Trigger] TriggerOut")
end

return Q7504903Trigger
