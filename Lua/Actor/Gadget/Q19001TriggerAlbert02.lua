require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19001TriggerAlbert02 = class("Q19001TriggerAlbert02", GadgetActorProxy)
Q19001TriggerAlbert02.defaultAlias = "Q19001TriggerAlbert02"
local Q19001ClientConfig = require("Quest/Client/Q19001ClientConfig")

local mainID = Q19001ClientConfig.MainID
local actorAlias = Q19001ClientConfig.ActorAlias
local subIDs = Q19001ClientConfig.SubIDs
local npcs = Q19001ClientConfig.Npcs
local datas = Q19001ClientConfig.Datas

function Q19001TriggerAlbert02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19001TriggerAlbert02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19001TriggerAlbert02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900108)
    self:DestroySelf()
end

function Q19001TriggerAlbert02:TriggerOut()
    print("TriggerOut")
end

return Q19001TriggerAlbert02
