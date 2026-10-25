require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local ALiu_Back_Trigger = class("ALiu_Back_Trigger", GadgetActorProxy)
ALiu_Back_Trigger.defaultAlias = "ALiu_Back_Trigger"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function ALiu_Back_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function ALiu_Back_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function ALiu_Back_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):FinishQuestID(false, 7217214)
    self:DestroySelf()
end

function ALiu_Back_Trigger:TriggerOut()
    print("TriggerOut")
end

return ALiu_Back_Trigger
