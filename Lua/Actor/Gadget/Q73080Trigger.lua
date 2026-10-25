require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73080Trigger = class("Q73080Trigger", GadgetActorProxy)
Q73080Trigger.defaultAlias = "Q73080Trigger"
local Q73080ClientConfig = require("Quest/Client/Q73080ClientConfig")

local subIDs = Q73080ClientConfig.SubIDs
local npcs = Q73080ClientConfig.Npcs

function Q73080Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73080Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73080Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(npcs.Npc20593Data.alias)
    actorMgr:GetActor("73080"):RequestInteraction(npcs.Npc20593Data.alias)
end

function Q73080Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73080Trigger
