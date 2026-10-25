require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910102Trigger = class("Q1910102Trigger", GadgetActorProxy)
Q1910102Trigger.defaultAlias = "Q1910102Trigger"
local Q19101ClientConfig = require("Quest/Client/Q19101ClientConfig")

local subIDs = Q19101ClientConfig.SubIDs
local npcs = Q19101ClientConfig.Npcs
local datas = Q19101ClientConfig.Datas

function Q1910102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19101"):RequestInteraction(npcs.Coop_DionaData.alias)
    self:DestroySelf()
end

function Q1910102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910102Trigger
