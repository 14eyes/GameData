require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40040Trigger = class("Q40040Trigger", GadgetActorProxy)
Q40040Trigger.defaultAlias = "Q40040Trigger"
local Q40040ClientConfig = require("Quest/Client/Q40040ClientConfig")

local subIDs = Q40040ClientConfig.SubIDs
local npcs = Q40040ClientConfig.Npcs

function Q40040Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40040Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40040Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40040"):RequestInteraction(npcs.Npc30085Data.alias)
    self:DestroySelf()
end

function Q40040Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40040Trigger
