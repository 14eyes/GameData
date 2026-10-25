require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19085Trigger1 = class("Q19085Trigger1", GadgetActorProxy)
Q19085Trigger1.defaultAlias = "Q19085Trigger1"
local Q19085ClientConfig = require("Quest/Client/Q19085ClientConfig")

local mainID = Q19085ClientConfig.MainID
local actorAlias = Q19085ClientConfig.ActorAlias
local subIDs = Q19085ClientConfig.SubIDs
local npcs = Q19085ClientConfig.Npcs
local datas = Q19085ClientConfig.Datas

function Q19085Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19085Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19085Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908501)
    self:DestroySelf()
end

function Q19085Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19085Trigger1
