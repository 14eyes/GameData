require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201508Trigger = class("Q1201508Trigger", GadgetActorProxy)
Q1201508Trigger.defaultAlias = "Q1201508Trigger"
local Q12015ClientConfig = require("Quest/Client/Q12015ClientConfig")

local subIDs = Q12015ClientConfig.SubIDs
local npcs = Q12015ClientConfig.Npcs
local datas = Q12015ClientConfig.Datas

function Q1201508Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201508Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201508Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12015"):NarratorOnlyTaskByData(datas.NarratorWithId1201501)
    self:DestroySelf()
end

function Q1201508Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201508Trigger
