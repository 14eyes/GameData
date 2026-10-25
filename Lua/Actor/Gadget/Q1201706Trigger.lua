require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201706Trigger = class("Q1201706Trigger", GadgetActorProxy)
Q1201706Trigger.defaultAlias = "Q1201706Trigger"
local Q12017ClientConfig = require("Quest/Client/Q12017ClientConfig")

local subIDs = Q12017ClientConfig.SubIDs
local npcs = Q12017ClientConfig.Npcs

function Q1201706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12017"):FinishQuestID(false, 1201706)
    self:DestroySelf()
end

function Q1201706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201706Trigger
