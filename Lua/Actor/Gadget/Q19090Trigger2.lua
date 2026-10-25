require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19090Trigger2 = class("Q19090Trigger2", GadgetActorProxy)
Q19090Trigger2.defaultAlias = "Q19090Trigger2"
local Q19090ClientConfig = require("Quest/Client/Q19090ClientConfig")

local mainID = Q19090ClientConfig.MainID
local actorAlias = Q19090ClientConfig.ActorAlias
local subIDs = Q19090ClientConfig.SubIDs
local npcs = Q19090ClientConfig.Npcs
local gadgets = Q19090ClientConfig.Gadgets
local datas = Q19090ClientConfig.Datas

function Q19090Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19090Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19090Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q19090Trigger2:TriggerOut()
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 1909007)
    self:DestroySelf()
end

return Q19090Trigger2
