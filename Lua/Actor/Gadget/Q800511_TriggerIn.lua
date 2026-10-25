require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800511_TriggerIn = class("Q800511_TriggerIn", GadgetActorProxy)
Q800511_TriggerIn.defaultAlias = "Q800511_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800511_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800511_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800511_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8005"):NarratorOnlyTaskByData(datas.NarratorWithId_800502)
    actorUtils.FinishQuestID(false, 800511)
    self:DestroySelf()
end

function Q800511_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800511_TriggerIn
