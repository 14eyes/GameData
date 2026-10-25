require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19006Trigger190060101 = class("Q19006Trigger190060101", GadgetActorProxy)
Q19006Trigger190060101.defaultAlias = "Q19006Trigger190060101"
local Q19006ClientConfig = require("Quest/Client/Q19006ClientConfig")

local mainID = Q19006ClientConfig.MainID
local actorAlias = Q19006ClientConfig.ActorAlias
local subIDs = Q19006ClientConfig.SubIDs
local npcs = Q19006ClientConfig.Npcs
local datas = Q19006ClientConfig.Datas

function Q19006Trigger190060101:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19006Trigger190060101:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19006Trigger190060101:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1900601)
    self:DestroySelf()
end

function Q19006Trigger190060101:TriggerOut()
    print("TriggerOut")
end

return Q19006Trigger190060101
