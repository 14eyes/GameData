require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223201Trigger = class("Q7223201Trigger", GadgetActorProxy)
Q7223201Trigger.defaultAlias = "Q7223201Trigger"
local Q72232ClientConfig = require("Quest/Client/Q72232ClientConfig")

local subIDs = Q72232ClientConfig.SubIDs
local npcs = Q72232ClientConfig.Npcs

function Q7223201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72232"):RequestInteraction(npcs.Npc20464Data.alias)
    self:DestroySelf()
end

function Q7223201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223201Trigger
