require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914308Trigger = class("Q1914308Trigger", GadgetActorProxy)
Q1914308Trigger.defaultAlias = "Q1914308Trigger"
local Q19143ClientConfig = require("Quest/Client/Q19143ClientConfig")

local subIDs = Q19143ClientConfig.SubIDs
local npcs = Q19143ClientConfig.Npcs
local datas = Q19143ClientConfig.Datas

function Q1914308Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914308Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914308Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19143").FinishQuestID(false, 1914308)
    self:DestroySelf()
end

function Q1914308Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914308Trigger
