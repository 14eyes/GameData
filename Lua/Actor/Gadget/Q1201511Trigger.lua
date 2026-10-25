require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201511Trigger = class("Q1201511Trigger", GadgetActorProxy)
Q1201511Trigger.defaultAlias = "Q1201511Trigger"
local Q12015ClientConfig = require("Quest/Client/Q12015ClientConfig")

local subIDs = Q12015ClientConfig.SubIDs
local npcs = Q12015ClientConfig.Npcs
local datas = Q12015ClientConfig.Datas

function Q1201511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201511Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12015"):FinishQuestID(false, 1201511)
    self:DestroySelf()
end

function Q1201511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201511Trigger
