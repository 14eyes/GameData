require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7051203_TriggerIn = class("Q7051203_TriggerIn", GadgetActorProxy)
Q7051203_TriggerIn.defaultAlias = "Q7051203_TriggerIn"
local Q70512ClientConfig = require("Quest/Client/Q70512ClientConfig")

local subIDs = Q70512ClientConfig.SubIDs
local npcs = Q70512ClientConfig.Npcs
local datas = Q70512ClientConfig.Datas

function Q7051203_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7051203_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7051203_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("70512")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7051203_guide").pos, 0, 3, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_7051202, nil, 70512)
    actorUtils.FinishQuestID(false, 7051203)
    self:DestroySelf()
end

function Q7051203_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q7051203_TriggerIn
