require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300612Trigger = class("Q300612Trigger", GadgetActorProxy)
Q300612Trigger.defaultAlias = "Q300612Trigger"
local Q3006ClientConfig = require("Quest/Client/Q3006ClientConfig")

local subIDs = Q3006ClientConfig.SubIDs
local npcs = Q3006ClientConfig.Npcs
local datas = Q3006ClientConfig.Datas

function Q300612Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300612Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300612Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3006"):RequestInteraction(npcs.Npc1053Data.alias)
    self:DestroySelf()
end

function Q300612Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300612Trigger
