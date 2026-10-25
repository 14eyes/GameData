require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19141Trigger = class("Q19141Trigger", GadgetActorProxy)
Q19141Trigger.defaultAlias = "Q19141Trigger"
local Q19141ClientConfig = require("Quest/Client/Q19141ClientConfig")

local subIDs = Q19141ClientConfig.SubIDs
local npcs = Q19141ClientConfig.Npcs

function Q19141Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19141Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19141Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19141"):RequestInteraction(npcs.Coop_ShinobuData.alias)
    self:DestroySelf()
end

function Q19141Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19141Trigger
