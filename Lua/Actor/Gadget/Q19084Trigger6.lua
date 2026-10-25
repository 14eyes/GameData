require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19084Trigger6 = class("Q19084Trigger6", GadgetActorProxy)
Q19084Trigger6.defaultAlias = "Q19084Trigger6"
local Q19084ClientConfig = require("Quest/Client/Q19084ClientConfig")

local mainID = Q19084ClientConfig.MainID
local actorAlias = Q19084ClientConfig.ActorAlias
local subIDs = Q19084ClientConfig.SubIDs
local npcs = Q19084ClientConfig.Npcs
local datas = Q19084ClientConfig.Datas

function Q19084Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19084Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19084Trigger6:TriggerIn()
    print("TriggerIn")
end

function Q19084Trigger6:TriggerOut()
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 1908411)
    self:DestroySelf()
end

return Q19084Trigger6
