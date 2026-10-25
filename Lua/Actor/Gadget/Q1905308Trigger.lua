require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905308Trigger = class("Q1905308Trigger", GadgetActorProxy)
Q1905308Trigger.defaultAlias = "Q1905308Trigger"
local Q19053ClientConfig = require("Quest/Client/Q19053ClientConfig")

local subIDs = Q19053ClientConfig.SubIDs
local npcs = Q19053ClientConfig.Npcs
local datas = Q19053ClientConfig.Datas

function Q1905308Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905308Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905308Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19053"):FinishQuestID(false, 1905308)
    self:DestroySelf()
end

function Q1905308Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905308Trigger
