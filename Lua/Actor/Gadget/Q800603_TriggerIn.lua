require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800603_TriggerIn = class("Q800603_TriggerIn", GadgetActorProxy)
Q800603_TriggerIn.defaultAlias = "Q800603_TriggerIn"
local Q8006ClientConfig = require("Quest/Client/Q8006ClientConfig")

local subIDs = Q8006ClientConfig.SubIDs
local npcs = Q8006ClientConfig.Npcs
local datas = Q8006ClientConfig.Datas

function Q800603_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800603_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800603_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("8006")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_800603)
    actor:EnterSceneLookCamera({x = 622.5767, y = 411.5834, z = 506.2139}, 0, 3, true, true)
    actorUtils.FinishQuestID(false, 800603)
    self:DestroySelf()
end

function Q800603_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800603_TriggerIn
