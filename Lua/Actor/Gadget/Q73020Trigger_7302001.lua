require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73020Trigger_7302001 = class("Q73020Trigger_7302001", GadgetActorProxy)
Q73020Trigger_7302001.defaultAlias = "Q73020Trigger_7302001"
local Q73020ClientConfig = require("Quest/Client/Q73020ClientConfig")

local subIDs = Q73020ClientConfig.SubIDs
local npcs = Q73020ClientConfig.Npcs
local datas = Q73020ClientConfig.Datas

function Q73020Trigger_7302001:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73020Trigger_7302001:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73020Trigger_7302001:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302001)
    self:DestroySelf()
end

function Q73020Trigger_7302001:TriggerOut()
    print("TriggerOut")
end

return Q73020Trigger_7302001
