require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914309Trigger = class("Q1914309Trigger", GadgetActorProxy)
Q1914309Trigger.defaultAlias = "Q1914309Trigger"
local Q19143ClientConfig = require("Quest/Client/Q19143ClientConfig")

local subIDs = Q19143ClientConfig.SubIDs
local npcs = Q19143ClientConfig.Npcs
local datas = Q19143ClientConfig.Datas

function Q1914309Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914309Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.5, DistType.EULER, {x = 2.0, y = 0.0, z = 1.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914309Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19143"):RequestInteraction(npcs.Npc12276Data.alias)
    self:DestroySelf()
end

function Q1914309Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914309Trigger
