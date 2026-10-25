require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201811Trigger = class("Q1201811Trigger", GadgetActorProxy)
Q1201811Trigger.defaultAlias = "Q1201811Trigger"
local Q12018ClientConfig = require("Quest/Client/Q12018ClientConfig")

local subIDs = Q12018ClientConfig.SubIDs
local npcs = Q12018ClientConfig.Npcs
local datas = Q12018ClientConfig.Datas

function Q1201811Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201811Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201811Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12018"):FinishQuestID(false, 1201811)
    self:DestroySelf()
end

function Q1201811Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201811Trigger
