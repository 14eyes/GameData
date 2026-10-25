require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201801Trigger = class("Q1201801Trigger", GadgetActorProxy)
Q1201801Trigger.defaultAlias = "Q1201801Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q1201801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201801Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12018"):FinishQuestID(false, 1201801)
    self:DestroySelf()
end

function Q1201801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201801Trigger
