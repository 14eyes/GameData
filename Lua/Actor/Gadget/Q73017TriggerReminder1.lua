require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73017TriggerReminder1 = class("Q73017TriggerReminder1", GadgetActorProxy)
Q73017TriggerReminder1.defaultAlias = "Q73017TriggerReminder1"
local Q73017ClientConfig = require("Quest/Client/Q73017ClientConfig")

local subIDs = Q73017ClientConfig.SubIDs
local npcs = Q73017ClientConfig.Npcs
local datas = Q73017ClientConfig.Datas

function Q73017TriggerReminder1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73017TriggerReminder1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73017TriggerReminder1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73017"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q73017TriggerReminder1:TriggerOut()
    print("TriggerOut")
end

return Q73017TriggerReminder1
