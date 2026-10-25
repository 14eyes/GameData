require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local PM_Talk_MT_Trigger = class("PM_Talk_MT_Trigger", GadgetActorProxy)
PM_Talk_MT_Trigger.defaultAlias = "PM_Talk_MT_Trigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function PM_Talk_MT_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function PM_Talk_MT_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function PM_Talk_MT_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216638)
    self:DestroySelf()
end

function PM_Talk_MT_Trigger:TriggerOut()
    print("TriggerOut")
end

return PM_Talk_MT_Trigger
