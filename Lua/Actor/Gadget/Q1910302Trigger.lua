require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910302Trigger = class("Q1910302Trigger", GadgetActorProxy)
Q1910302Trigger.defaultAlias = "Q1910302Trigger"
local Q19103ClientConfig = require("Quest/Client/Q19103ClientConfig")

local subIDs = Q19103ClientConfig.SubIDs
local npcs = Q19103ClientConfig.Npcs
local datas = Q19103ClientConfig.Datas

function Q1910302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13.45026, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910302Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19103"):FinishQuestID(false, 1910302)
    self:DestroySelf()
end

function Q1910302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910302Trigger
