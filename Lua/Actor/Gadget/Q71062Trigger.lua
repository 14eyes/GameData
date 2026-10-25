require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71062Trigger = class("Q71062Trigger", GadgetActorProxy)
Q71062Trigger.defaultAlias = "Q71062Trigger"
local Q71062ClientConfig = require("Quest/Client/Q71062ClientConfig")

local subIDs = Q71062ClientConfig.SubIDs
local npcs = Q71062ClientConfig.Npcs

function Q71062Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71062Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71062Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71062"):RequestInteraction("20536")
    self:DestroySelf()
end

function Q71062Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71062Trigger
