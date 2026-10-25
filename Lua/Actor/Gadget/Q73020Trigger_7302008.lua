require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73020Trigger_7302008 = class("Q73020Trigger_7302008", GadgetActorProxy)
Q73020Trigger_7302008.defaultAlias = "Q73020Trigger_7302008"
local Q73020ClientConfig = require("Quest/Client/Q73020ClientConfig")

local subIDs = Q73020ClientConfig.SubIDs
local npcs = Q73020ClientConfig.Npcs
local datas = Q73020ClientConfig.Datas

function Q73020Trigger_7302008:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73020Trigger_7302008:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73020Trigger_7302008:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302008)
    actorMgr:GetActor("73020"):NarratorOnlyTask(datas.Reminder_7302008, nil, "")
    self:DestroySelf()
end

function Q73020Trigger_7302008:TriggerOut()
    print("TriggerOut")
end

return Q73020Trigger_7302008
