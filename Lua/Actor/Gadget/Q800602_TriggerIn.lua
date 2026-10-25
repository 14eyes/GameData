require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800602_TriggerIn = class("Q800602_TriggerIn", GadgetActorProxy)
Q800602_TriggerIn.defaultAlias = "Q800602_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800602_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800602_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800602_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8006"):NarratorOnlyTaskByData(datas.NarratorWithId_800601)
    actorUtils.FinishQuestID(false, 800602)
    self:DestroySelf()
end

function Q800602_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800602_TriggerIn
