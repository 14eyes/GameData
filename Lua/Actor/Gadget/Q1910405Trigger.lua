require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910405Trigger = class("Q1910405Trigger", GadgetActorProxy)
Q1910405Trigger.defaultAlias = "Q1910405Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910405Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19104"):FinishQuestID(false, 1910405)
    self:DestroySelf()
end

function Q1910405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910405Trigger
