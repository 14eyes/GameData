require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201501Trigger = class("Q1201501Trigger", GadgetActorProxy)
Q1201501Trigger.defaultAlias = "Q1201501Trigger"
local Q12015ClientConfig = require("Quest/Client/Q12015ClientConfig")

local subIDs = Q12015ClientConfig.SubIDs
local npcs = Q12015ClientConfig.Npcs
local datas = Q12015ClientConfig.Datas

function Q1201501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12015"):FinishQuestID(false, 1201501)
    self:DestroySelf()
end

function Q1201501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201501Trigger
