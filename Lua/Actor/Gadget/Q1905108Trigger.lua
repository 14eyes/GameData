require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905108Trigger = class("Q1905108Trigger", GadgetActorProxy)
Q1905108Trigger.defaultAlias = "Q1905108Trigger"
local Q19051ClientConfig = require("Quest/Client/Q19051ClientConfig")

local subIDs = Q19051ClientConfig.SubIDs
local npcs = Q19051ClientConfig.Npcs
local datas = Q19051ClientConfig.Datas

function Q1905108Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905108Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905108Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19051"):RequestInteraction(npcs.Coop_BeidouData.alias)
    self:DestroySelf()
end

function Q1905108Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905108Trigger
