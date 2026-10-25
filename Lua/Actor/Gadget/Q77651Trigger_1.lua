require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77651Trigger_1 = class("Q77651Trigger_1", GadgetActorProxy)
Q77651Trigger_1.defaultAlias = "Q77651Trigger_1"
local Q77651ClientConfig = require("Quest/Client/Q77651ClientConfig")

local this
local subIDs = Q77651ClientConfig.SubIDs
local npcs = Q77651ClientConfig.Npcs
local points = Q77651ClientConfig.Points

function Q77651Trigger_1:OnPostDataPrepare()
    print("Q77651Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77651Trigger_1:OnPostComponentPrepare()
    print("Q77651Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77651)
end

function Q77651Trigger_1:TriggerIn()
    print("Q77651Trigger_1 - TriggerIn")
    actorMgr:GetActor("77651"):RequestInteraction(npcs.Npc1331.alias, "", true)
    actorMgr:GetActor("77651"):CancelStoryByQuest(147765101)
    this:DestroySelf()
end

function Q77651Trigger_1:PreTriggerIn()
    print("Q77651Trigger_1 - PreTriggerIn")
end

function Q77651Trigger_1:LightUpTriggerIn()
    print("Q77651Trigger_1 - LightUpTriggerIn")
end

function Q77651Trigger_1:TriggerOut()
    print("Q77651Trigger_1 - TriggerOut")
end

return Q77651Trigger_1
