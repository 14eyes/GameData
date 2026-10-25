require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local GateReminder_Trigger = class("GateReminder_Trigger", GadgetActorProxy)
GateReminder_Trigger.defaultAlias = "GateReminder_Trigger"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function GateReminder_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function GateReminder_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function GateReminder_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):NarratorOnlyTask(datas.Gate_Enter_Reminder, nil, "")
    self:DestroySelf()
end

function GateReminder_Trigger:TriggerOut()
    print("TriggerOut")
end

return GateReminder_Trigger
