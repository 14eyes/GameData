require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19010Trigger = class("Q19010Trigger", GadgetActorProxy)
Q19010Trigger.defaultAlias = "Q19010Trigger"
local Q19010ClientConfig = require("Quest/Client/Q19010ClientConfig")

local subIDs = Q19010ClientConfig.SubIDs
local npcs = Q19010ClientConfig.Npcs

function Q19010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19010Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19010")
    actor:NpcCreateWithBlackscreenInteraction(actor, npcs.Npc3106Data.id, 1, npcs.Npc3106Data.alias)
    self:DestroySelf()
end

function Q19010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19010Trigger
