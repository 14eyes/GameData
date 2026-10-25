require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73017TriggerQ14 = class("Q73017TriggerQ14", GadgetActorProxy)
Q73017TriggerQ14.defaultAlias = "Q73017TriggerQ14"
local Q73017ClientConfig = require("Quest/Client/Q73017ClientConfig")

local subIDs = Q73017ClientConfig.SubIDs
local npcs = Q73017ClientConfig.Npcs
local datas = Q73017ClientConfig.Datas

function Q73017TriggerQ14:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73017TriggerQ14:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73017TriggerQ14:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301714)
    self:DestroySelf()
end

function Q73017TriggerQ14:TriggerOut()
    print("TriggerOut")
end

return Q73017TriggerQ14
