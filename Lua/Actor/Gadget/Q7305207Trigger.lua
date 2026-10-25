require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7305207Trigger = class("Q7305207Trigger", GadgetActorProxy)
Q7305207Trigger.defaultAlias = "Q7305207Trigger"
local Q73052ClientConfig = require("Quest/Client/Q73052ClientConfig")

local subIDs = Q73052ClientConfig.SubIDs
local npcs = Q73052ClientConfig.Npcs
local datas = Q73052ClientConfig.Datas

function Q7305207Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7305207Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7305207Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305207)
    actorMgr:GetActor("73052"):NarratorOnlyTask(datas.NarratorTable7305207, nil, "")
    self:DestroySelf()
end

function Q7305207Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7305207Trigger
