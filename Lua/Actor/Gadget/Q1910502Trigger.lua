require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910502Trigger = class("Q1910502Trigger", GadgetActorProxy)
Q1910502Trigger.defaultAlias = "Q1910502Trigger"
local Q19105ClientConfig = require("Quest/Client/Q19105ClientConfig")

local subIDs = Q19105ClientConfig.SubIDs
local npcs = Q19105ClientConfig.Npcs

function Q1910502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910502Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19105"):RequestInteraction(npcs.Coop_DionaData.alias)
    self:DestroySelf()
end

function Q1910502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910502Trigger
