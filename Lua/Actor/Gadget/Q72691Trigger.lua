require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72691Trigger = class("Q72691Trigger", GadgetActorProxy)
Q72691Trigger.defaultAlias = "Q72691Trigger"
local Q72691ClientConfig = require("Quest/Client/Q72691ClientConfig")

local subIDs = Q72691ClientConfig.SubIDs
local npcs = Q72691ClientConfig.Npcs

function Q72691Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72691Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72691Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72691"):RequestInteractionForceAlias(npcs.Npc30172Data.alias)
    self:DestroySelf()
end

function Q72691Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72691Trigger
