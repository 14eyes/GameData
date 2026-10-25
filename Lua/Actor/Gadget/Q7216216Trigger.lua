require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216216Trigger = class("Q7216216Trigger", GadgetActorProxy)
Q7216216Trigger.defaultAlias = "Q7216216Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function Q7216216Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216216Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216216Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72162"):FinishQuestID(false, 7216216)
    self:DestroySelf()
end

function Q7216216Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216216Trigger
