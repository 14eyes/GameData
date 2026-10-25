require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77651Trigger_3 = class("Q77651Trigger_3", GadgetActorProxy)
Q77651Trigger_3.defaultAlias = "Q77651Trigger_3"
local Q77651ClientConfig = require("Quest/Client/Q77651ClientConfig")

local this
local subIDs = Q77651ClientConfig.SubIDs
local npcs = Q77651ClientConfig.Npcs
local points = Q77651ClientConfig.Points

function Q77651Trigger_3:OnPostDataPrepare()
    print("Q77651Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q77651Trigger_3:OnPostComponentPrepare()
    print("Q77651Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77651)
end

function Q77651Trigger_3:TriggerIn()
    print("Q77651Trigger_3 - TriggerIn")
    actorMgr:GetActor("77651"):RequestInteraction(npcs.Npc1331.alias, "", true)
    this:DestroySelf()
end

function Q77651Trigger_3:PreTriggerIn()
    print("Q77651Trigger_3 - PreTriggerIn")
end

function Q77651Trigger_3:LightUpTriggerIn()
    print("Q77651Trigger_3 - LightUpTriggerIn")
end

function Q77651Trigger_3:TriggerOut()
    print("Q77651Trigger_3 - TriggerOut")
end

return Q77651Trigger_3
