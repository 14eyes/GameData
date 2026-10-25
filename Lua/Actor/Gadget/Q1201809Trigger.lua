require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201809Trigger = class("Q1201809Trigger", GadgetActorProxy)
Q1201809Trigger.defaultAlias = "Q1201809Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q1201809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201809Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12018"):FinishQuestID(false, 1201809)
    self:DestroySelf()
end

function Q1201809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201809Trigger
