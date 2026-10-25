require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72227Trigger = class("Q72227Trigger", GadgetActorProxy)
Q72227Trigger.defaultAlias = "Q72227Trigger"
local Q72227ClientConfig = require("Quest/Client/Q72227ClientConfig")

local subIDs = Q72227ClientConfig.SubIDs
local npcs = Q72227ClientConfig.Npcs

function Q72227Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72227Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72227Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72227"):RequestInteraction(npcs.Npc20453Data.alias)
    self:DestroySelf()
end

function Q72227Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72227Trigger
