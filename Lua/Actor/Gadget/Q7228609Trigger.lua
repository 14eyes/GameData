require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228609Trigger = class("Q7228609Trigger", GadgetActorProxy)
Q7228609Trigger.defaultAlias = "Q7228609Trigger"
local Q72286ClientConfig = require("Quest/Client/Q72286ClientConfig")

local subIDs = Q72286ClientConfig.SubIDs
local npcs = Q72286ClientConfig.Npcs

function Q7228609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7228609Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72286"):RequestInteraction(npcs.Npc3162Data.alias)
    self:DestroySelf()
end

function Q7228609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7228609Trigger
