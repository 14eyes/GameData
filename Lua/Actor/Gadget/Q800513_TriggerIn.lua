require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800513_TriggerIn = class("Q800513_TriggerIn", GadgetActorProxy)
Q800513_TriggerIn.defaultAlias = "Q800513_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800513_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800513_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(6, 10, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800513_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8005"):NarratorOnlyTaskByData(datas.NarratorWithId_800503)
    actorUtils.FinishQuestID(false, 800513)
    self:DestroySelf()
end

function Q800513_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800513_TriggerIn
