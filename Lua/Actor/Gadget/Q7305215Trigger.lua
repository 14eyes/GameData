require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305215Trigger = class("Q7305215Trigger", GadgetActorProxy)
Q7305215Trigger.defaultAlias = "Q7305215Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305215Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305215Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305215Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73052"):RequestInteraction(npcs.Npc20722Data.alias)
    self:DestroySelf()
end

function Q7305215Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305215Trigger
