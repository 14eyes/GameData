require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73014Trigger1 = class("Q73014Trigger1", GadgetActorProxy)
Q73014Trigger1.defaultAlias = "Q73014Trigger1"
local Q73014ClientConfig = require("Quest/Client/Q73014ClientConfig")

local subIDs = Q73014ClientConfig.SubIDs
local npcs = Q73014ClientConfig.Npcs
local datas = Q73014ClientConfig.Datas

function Q73014Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73014Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73014Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301409)
    actorMgr:GetActor("73014"):NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:DestroySelf()
end

function Q73014Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73014Trigger1
