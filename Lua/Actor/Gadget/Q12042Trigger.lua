require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12042Trigger = class("Q12042Trigger", GadgetActorProxy)
Q12042Trigger.defaultAlias = "Q12042Trigger"
local Q12042ClientConfig = require("Quest/Client/Q12042ClientConfig")

local subIDs = Q12042ClientConfig.SubIDs
local npcs = Q12042ClientConfig.Npcs
local datas = Q12042ClientConfig.Datas

function Q12042Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12042Trigger:TriggerOut()
    print("TriggerOut")
end

function Q12042Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12042Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12042"):FinishQuestID(false, 1204201)
    self:DestroySelf()
end

return Q12042Trigger
