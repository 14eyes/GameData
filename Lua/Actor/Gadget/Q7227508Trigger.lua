require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227508Trigger = class("Q7227508Trigger", GadgetActorProxy)
Q7227508Trigger.defaultAlias = "Q7227508Trigger"
local Q72275ClientConfig = require("Quest/Client/Q72275ClientConfig")

local subIDs = Q72275ClientConfig.SubIDs
local npcs = Q72275ClientConfig.Npcs

function Q7227508Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227508Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227508Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72275"):RequestInteraction(npcs.NPC20341Data.alias)
    self:DestroySelf()
end

function Q7227508Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227508Trigger
