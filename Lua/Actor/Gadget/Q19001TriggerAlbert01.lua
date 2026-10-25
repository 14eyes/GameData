require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19001TriggerAlbert01 = class("Q19001TriggerAlbert01", GadgetActorProxy)
Q19001TriggerAlbert01.defaultAlias = "Q19001TriggerAlbert01"
local Q19001ClientConfig = require("Quest/Client/Q19001ClientConfig")

local mainID = Q19001ClientConfig.MainID
local actorAlias = Q19001ClientConfig.ActorAlias
local subIDs = Q19001ClientConfig.SubIDs
local npcs = Q19001ClientConfig.Npcs
local datas = Q19001ClientConfig.Datas

function Q19001TriggerAlbert01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19001TriggerAlbert01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19001TriggerAlbert01:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:FinishQuestID(false, 1900108)
    actor:EnterSceneLookCamera({x = 2054.678, y = 260.3292, z = -345.4609}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19001003)
    self:DestroySelf()
end

function Q19001TriggerAlbert01:TriggerOut()
    print("TriggerOut")
end

return Q19001TriggerAlbert01
