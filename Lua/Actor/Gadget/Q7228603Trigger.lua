require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228603Trigger = class("Q7228603Trigger", GadgetActorProxy)
Q7228603Trigger.defaultAlias = "Q7228603Trigger"
local Q72286ClientConfig = require("Quest/Client/Q72286ClientConfig")

local subIDs = Q72286ClientConfig.SubIDs
local npcs = Q72286ClientConfig.Npcs

function Q7228603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7228603Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72286"):RequestInteraction(npcs.Npc3162Data.alias)
    self:DestroySelf()
end

function Q7228603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228603Trigger
