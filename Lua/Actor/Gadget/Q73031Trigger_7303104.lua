require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73031Trigger_7303104 = class("Q73031Trigger_7303104", GadgetActorProxy)
Q73031Trigger_7303104.defaultAlias = "Q73031Trigger_7303104"
local Q73031ClientConfig = require("Quest/Client/Q73031ClientConfig")

local subIDs = Q73031ClientConfig.SubIDs
local npcs = Q73031ClientConfig.Npcs
local datas = Q73031ClientConfig.Datas

function Q73031Trigger_7303104:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73031Trigger_7303104:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73031Trigger_7303104:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73031"):NarratorOnlyTask(datas.Paimon2_close, nil, "")
    actorUtils.FinishQuestID(false, 7303104)
    self:DestroySelf()
end

function Q73031Trigger_7303104:TriggerOut()
    print("TriggerOut")
end

return Q73031Trigger_7303104
