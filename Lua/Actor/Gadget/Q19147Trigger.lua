require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19147Trigger = class("Q19147Trigger", GadgetActorProxy)
Q19147Trigger.defaultAlias = "Q19147Trigger"
local Q19147ClientConfig = require("Quest/Client/Q19147ClientConfig")

local subIDs = Q19147ClientConfig.SubIDs
local npcs = Q19147ClientConfig.Npcs

function Q19147Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19147Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19147Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19147"):RequestInteraction(npcs.Coop_ShinobuData.alias)
    self:DestroySelf()
end

function Q19147Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19147Trigger
