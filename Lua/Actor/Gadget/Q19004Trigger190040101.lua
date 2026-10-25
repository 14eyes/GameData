require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19004Trigger190040101 = class("Q19004Trigger190040101", GadgetActorProxy)
Q19004Trigger190040101.defaultAlias = "Q19004Trigger190040101"
local Q19004ClientConfig = require("Quest/Client/Q19004ClientConfig")

local mainID = Q19004ClientConfig.MainID
local actorAlias = Q19004ClientConfig.ActorAlias
local subIDs = Q19004ClientConfig.SubIDs
local npcs = Q19004ClientConfig.Npcs
local datas = Q19004ClientConfig.Datas

function Q19004Trigger190040101:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19004Trigger190040101:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19004Trigger190040101:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:EnterSceneLookCamera({x = 1528.681, y = 257.7366, z = 159.7478}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId19004001)
    actor:FinishQuestID(false, 1900401)
    self:DestroySelf()
end

function Q19004Trigger190040101:TriggerOut()
    print("TriggerOut")
end

return Q19004Trigger190040101
