require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77651Trigger = class("Q77651Trigger", GadgetActorProxy)
Q77651Trigger.defaultAlias = "Q77651Trigger"
local Q77651ClientConfig = require("Quest/Client/Q77651ClientConfig")

local this
local subIDs = Q77651ClientConfig.SubIDs
local npcs = Q77651ClientConfig.Npcs
local points = Q77651ClientConfig.Points

function Q77651Trigger:OnPostDataPrepare()
    print("Q77651Trigger - OnPostDataPrepare")
    this = self
end

function Q77651Trigger:OnPostComponentPrepare()
    print("Q77651Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77651)
end

function Q77651Trigger:TriggerIn()
    print("Q77651Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7765101})
    this:DestroySelf()
end

function Q77651Trigger:PreTriggerIn()
    print("Q77651Trigger - PreTriggerIn")
end

function Q77651Trigger:LightUpTriggerIn()
    print("Q77651Trigger - LightUpTriggerIn")
end

function Q77651Trigger:TriggerOut()
    print("Q77651Trigger - TriggerOut")
end

return Q77651Trigger
