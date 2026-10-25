require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910305Trigger = class("Q1910305Trigger", GadgetActorProxy)
Q1910305Trigger.defaultAlias = "Q1910305Trigger"
local Q19103ClientConfig = require("Quest/Client/Q19103ClientConfig")

local subIDs = Q19103ClientConfig.SubIDs
local npcs = Q19103ClientConfig.Npcs
local datas = Q19103ClientConfig.Datas

function Q1910305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19103"):FinishQuestID(false, 1910305)
    self:DestroySelf()
end

function Q1910305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910305Trigger
