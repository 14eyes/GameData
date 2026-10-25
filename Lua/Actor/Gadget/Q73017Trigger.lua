require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73017Trigger = class("Q73017Trigger", GadgetActorProxy)
Q73017Trigger.defaultAlias = "Q73017Trigger"
local Q73017ClientConfig = require("Quest/Client/Q73017ClientConfig")

local subIDs = Q73017ClientConfig.SubIDs
local npcs = Q73017ClientConfig.Npcs
local datas = Q73017ClientConfig.Datas

function Q73017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73017Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301701)
    actorMgr:GetActor("73017"):NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:DestroySelf()
end

function Q73017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73017Trigger
