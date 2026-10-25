require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73014Trigger = class("Q73014Trigger", GadgetActorProxy)
Q73014Trigger.defaultAlias = "Q73014Trigger"
local Q73014ClientConfig = require("Quest/Client/Q73014ClientConfig")

local subIDs = Q73014ClientConfig.SubIDs
local npcs = Q73014ClientConfig.Npcs
local datas = Q73014ClientConfig.Datas

function Q73014Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73014Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73014Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301401)
    actorMgr:GetActor("73014"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q73014Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73014Trigger
