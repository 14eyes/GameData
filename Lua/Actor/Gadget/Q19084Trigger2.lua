require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19084Trigger2 = class("Q19084Trigger2", GadgetActorProxy)
Q19084Trigger2.defaultAlias = "Q19084Trigger2"
local Q19084ClientConfig = require("Quest/Client/Q19084ClientConfig")

local mainID = Q19084ClientConfig.MainID
local actorAlias = Q19084ClientConfig.ActorAlias
local subIDs = Q19084ClientConfig.SubIDs
local npcs = Q19084ClientConfig.Npcs
local datas = Q19084ClientConfig.Datas

function Q19084Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19084Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19084Trigger2:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908407)
    self:DestroySelf()
end

function Q19084Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19084Trigger2
