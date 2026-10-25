require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12042Trigger1 = class("Q12042Trigger1", GadgetActorProxy)
Q12042Trigger1.defaultAlias = "Q12042Trigger1"
local Q12042ClientConfig = require("Quest/Client/Q12042ClientConfig")

local subIDs = Q12042ClientConfig.SubIDs
local npcs = Q12042ClientConfig.Npcs
local datas = Q12042ClientConfig.Datas

function Q12042Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12042Trigger1:TriggerOut()
    print("TriggerOut")
end

function Q12042Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12042Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12042"):FinishQuestID(false, 1204203)
    self:DestroySelf()
end

return Q12042Trigger1
