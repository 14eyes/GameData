require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910104Trigger = class("Q1910104Trigger", GadgetActorProxy)
Q1910104Trigger.defaultAlias = "Q1910104Trigger"
local Q19101ClientConfig = require("Quest/Client/Q19101ClientConfig")

local subIDs = Q19101ClientConfig.SubIDs
local npcs = Q19101ClientConfig.Npcs
local datas = Q19101ClientConfig.Datas

function Q1910104Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910104Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910104Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19101"):FinishQuestID(false, 1910104)
    self:DestroySelf()
end

function Q1910104Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910104Trigger
