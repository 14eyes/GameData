require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19017Trigger = class("Q19017Trigger", GadgetActorProxy)
Q19017Trigger.defaultAlias = "Q19017Trigger"
local Q19017ClientConfig = require("Quest/Client/Q19017ClientConfig")

local subIDs = Q19017ClientConfig.SubIDs
local npcs = Q19017ClientConfig.Npcs

function Q19017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19017Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19017"):RequestInteraction(npcs.Npc12318Data.alias)
    self:DestroySelf()
end

function Q19017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19017Trigger
