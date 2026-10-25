require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73018TriggerQ09Reminder = class("Q73018TriggerQ09Reminder", GadgetActorProxy)
Q73018TriggerQ09Reminder.defaultAlias = "Q73018TriggerQ09Reminder"
local Q73018ClientConfig = require("Quest/Client/Q73018ClientConfig")

local subIDs = Q73018ClientConfig.SubIDs
local npcs = Q73018ClientConfig.Npcs
local datas = Q73018ClientConfig.Datas

function Q73018TriggerQ09Reminder:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73018TriggerQ09Reminder:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73018TriggerQ09Reminder:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73018"):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q73018TriggerQ09Reminder:TriggerOut()
    print("TriggerOut")
end

return Q73018TriggerQ09Reminder
