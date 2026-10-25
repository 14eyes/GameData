require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910304Trigger = class("Q1910304Trigger", GadgetActorProxy)
Q1910304Trigger.defaultAlias = "Q1910304Trigger"
local Q19103ClientConfig = require("Quest/Client/Q19103ClientConfig")

local subIDs = Q19103ClientConfig.SubIDs
local npcs = Q19103ClientConfig.Npcs
local datas = Q19103ClientConfig.Datas

function Q1910304Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910304Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910304Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19103"):RequestInteraction(npcs.Coop_DionaData.alias)
    self:DestroySelf()
end

function Q1910304Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910304Trigger
