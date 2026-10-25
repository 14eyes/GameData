require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910401Trigger = class("Q1910401Trigger", GadgetActorProxy)
Q1910401Trigger.defaultAlias = "Q1910401Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(130, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910401Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1910401Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19104"):FinishQuestID(true, 1910414)
    self:DestroySelf()
end

return Q1910401Trigger
