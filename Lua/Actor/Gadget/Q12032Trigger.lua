require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12032Trigger = class("Q12032Trigger", GadgetActorProxy)
Q12032Trigger.defaultAlias = "Q12032Trigger"
local Q12032ClientConfig = require("Quest/Client/Q12032ClientConfig")

local subIDs = Q12032ClientConfig.SubIDs
local npcs = Q12032ClientConfig.Npcs

function Q12032Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12032Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12032Trigger:TriggerIn()
    print("TriggerIn")
end

function Q12032Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12032"):FinishQuestID(false, 1203201)
    self:DestroySelf()
end

return Q12032Trigger
