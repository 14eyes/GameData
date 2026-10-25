require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local ALiu_Talk_Trigger = class("ALiu_Talk_Trigger", GadgetActorProxy)
ALiu_Talk_Trigger.defaultAlias = "ALiu_Talk_Trigger"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function ALiu_Talk_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function ALiu_Talk_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function ALiu_Talk_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):RequestInteraction(npcs.Npc20320Data.alias)
    self:DestroySelf()
end

function ALiu_Talk_Trigger:TriggerOut()
    print("TriggerOut")
end

return ALiu_Talk_Trigger
