require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Stone_Trigger = class("Stone_Trigger", GadgetActorProxy)
Stone_Trigger.defaultAlias = "Stone_Trigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Stone_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Stone_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Stone_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216646)
    self:DestroySelf()
end

function Stone_Trigger:TriggerOut()
    print("TriggerOut")
end

return Stone_Trigger
