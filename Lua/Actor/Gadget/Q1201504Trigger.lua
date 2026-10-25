require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201504Trigger = class("Q1201504Trigger", GadgetActorProxy)
Q1201504Trigger.defaultAlias = "Q1201504Trigger"
local Q12015ClientConfig = require("Quest/Client/Q12015ClientConfig")

local subIDs = Q12015ClientConfig.SubIDs
local npcs = Q12015ClientConfig.Npcs
local datas = Q12015ClientConfig.Datas

function Q1201504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12015"):FinishQuestID(false, 1201504)
    self:DestroySelf()
end

function Q1201504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201504Trigger
