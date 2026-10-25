require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12020Trigger = class("Q12020Trigger", GadgetActorProxy)
Q12020Trigger.defaultAlias = "Q12020Trigger"
local Q12020ClientConfig = require("Quest/Client/Q12020ClientConfig")

local subIDs = Q12020ClientConfig.SubIDs
local npcs = Q12020ClientConfig.Npcs

function Q12020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12020Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12020"):FinishQuestID(false, 1202007)
end

function Q12020Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12020Trigger
