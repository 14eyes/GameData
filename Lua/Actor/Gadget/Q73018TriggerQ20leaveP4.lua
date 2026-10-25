require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73018TriggerQ20leaveP4 = class("Q73018TriggerQ20leaveP4", GadgetActorProxy)
Q73018TriggerQ20leaveP4.defaultAlias = "Q73018TriggerQ20leaveP4"
local Q73018ClientConfig = require("Quest/Client/Q73018ClientConfig")

local subIDs = Q73018ClientConfig.SubIDs
local npcs = Q73018ClientConfig.Npcs
local datas = Q73018ClientConfig.Datas

function Q73018TriggerQ20leaveP4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73018TriggerQ20leaveP4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73018TriggerQ20leaveP4:TriggerIn()
    print("TriggerIn")
end

function Q73018TriggerQ20leaveP4:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7301820)
    self:DestroySelf()
end

return Q73018TriggerQ20leaveP4
