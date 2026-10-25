require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72226Trigger = class("Q72226Trigger", GadgetActorProxy)
Q72226Trigger.defaultAlias = "Q72226Trigger"
local Q72226ClientConfig = require("Quest/Client/Q72226ClientConfig")

local subIDs = Q72226ClientConfig.SubIDs
local npcs = Q72226ClientConfig.Npcs

function Q72226Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72226Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72226Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72226"):RequestInteraction(npcs.Npc20452Data.alias)
    self:DestroySelf()
end

function Q72226Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72226Trigger
