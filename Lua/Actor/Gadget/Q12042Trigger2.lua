require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12042Trigger2 = class("Q12042Trigger2", GadgetActorProxy)
Q12042Trigger2.defaultAlias = "Q12042Trigger2"
local Q12042ClientConfig = require("Quest/Client/Q12042ClientConfig")

local subIDs = Q12042ClientConfig.SubIDs
local npcs = Q12042ClientConfig.Npcs
local datas = Q12042ClientConfig.Datas

function Q12042Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12042Trigger2:TriggerOut()
    print("TriggerOut")
end

function Q12042Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12042Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12042"):FinishQuestID(false, 9000401)
end

return Q12042Trigger2
