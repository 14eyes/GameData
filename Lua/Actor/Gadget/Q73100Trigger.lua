require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73100Trigger = class("Q73100Trigger", GadgetActorProxy)
Q73100Trigger.defaultAlias = "Q73100Trigger"
local Q73100ClientConfig = require("Quest/Client/Q73100ClientConfig")

local subIDs = Q73100ClientConfig.SubIDs
local npcs = Q73100ClientConfig.Npcs

function Q73100Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73100Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73100Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73100"):RequestInteraction(npcs.Npc4246Data.alias)
    self:DestroySelf()
end

function Q73100Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73100Trigger
