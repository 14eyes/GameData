require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006902_Trigger = class("Q4006902_Trigger", GadgetActorProxy)
Q4006902_Trigger.defaultAlias = "Q4006902_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs

function Q4006902_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006902_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006902_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40069"):RequestInteraction(npcs.Npc12616Data.alias)
    self:DestroySelf()
end

function Q4006902_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006902_Trigger
