require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19082Trigger1 = class("Q19082Trigger1", GadgetActorProxy)
Q19082Trigger1.defaultAlias = "Q19082Trigger1"
local Q19082ClientConfig = require("Quest/Client/Q19082ClientConfig")

local mainID = Q19082ClientConfig.MainID
local actorAlias = Q19082ClientConfig.ActorAlias
local subIDs = Q19082ClientConfig.SubIDs
local npcs = Q19082ClientConfig.Npcs
local datas = Q19082ClientConfig.Datas

function Q19082Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19082Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19082Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908201)
    self:DestroySelf()
end

function Q19082Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19082Trigger1
