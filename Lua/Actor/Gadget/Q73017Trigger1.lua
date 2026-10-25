require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73017Trigger1 = class("Q73017Trigger1", GadgetActorProxy)
Q73017Trigger1.defaultAlias = "Q73017Trigger1"
local Q73017ClientConfig = require("Quest/Client/Q73017ClientConfig")

local subIDs = Q73017ClientConfig.SubIDs
local npcs = Q73017ClientConfig.Npcs
local datas = Q73017ClientConfig.Datas

function Q73017Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73017Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73017Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301703)
    self:DestroySelf()
end

function Q73017Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73017Trigger1
