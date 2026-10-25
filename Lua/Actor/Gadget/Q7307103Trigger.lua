require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7307103Trigger = class("Q7307103Trigger", GadgetActorProxy)
Q7307103Trigger.defaultAlias = "Q7307103Trigger"
local Q73071ClientConfig = require("Quest/Client/Q73071ClientConfig")

local subIDs = Q73071ClientConfig.SubIDs
local npcs = Q73071ClientConfig.Npcs

function Q7307103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7307103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.847782, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7307103Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73071"):RequestInteraction(npcs.Npc20749Data.alias)
    self:DestroySelf()
end

function Q7307103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7307103Trigger
