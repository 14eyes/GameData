require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73044Trigger_01 = class("Q73044Trigger_01", GadgetActorProxy)
Q73044Trigger_01.defaultAlias = "Q73044Trigger_01"
local Q73044ClientConfig = require("Quest/Client/Q73044ClientConfig")

local subIDs = Q73044ClientConfig.SubIDs
local npcs = Q73044ClientConfig.Npcs
local datas = Q73044ClientConfig.Datas

function Q73044Trigger_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73044Trigger_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73044Trigger_01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73044"):NarratorOnlyTask(datas.reminder, nil, "")
    actorUtils.FinishQuestID(false, 7304402)
    self:DestroySelf()
end

function Q73044Trigger_01:TriggerOut()
    print("TriggerOut")
end

return Q73044Trigger_01
