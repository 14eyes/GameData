require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19092Trigger3 = class("Q19092Trigger3", GadgetActorProxy)
Q19092Trigger3.defaultAlias = "Q19092Trigger3"
local Q19092ClientConfig = require("Quest/Client/Q19092ClientConfig")

local mainID = Q19092ClientConfig.MainID
local actorAlias = Q19092ClientConfig.ActorAlias
local subIDs = Q19092ClientConfig.SubIDs
local npcs = Q19092ClientConfig.Npcs
local gadgets = Q19092ClientConfig.Gadgets
local datas = Q19092ClientConfig.Datas

function Q19092Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19092Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19092Trigger3:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1909208)
    self:DestroySelf()
end

function Q19092Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19092Trigger3
