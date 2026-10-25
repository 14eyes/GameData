require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72693Trigger = class("Q72693Trigger", GadgetActorProxy)
Q72693Trigger.defaultAlias = "Q72693Trigger"
local Q72693ClientConfig = require("Quest/Client/Q72693ClientConfig")

local subIDs = Q72693ClientConfig.SubIDs
local npcs = Q72693ClientConfig.Npcs

function Q72693Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72693Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72693Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72693"):RequestInteractionForceAlias(npcs.Npc30173Data.alias)
    self:DestroySelf()
end

function Q72693Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72693Trigger
