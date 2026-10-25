require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201701Trigger = class("Q1201701Trigger", GadgetActorProxy)
Q1201701Trigger.defaultAlias = "Q1201701Trigger"
local Q12017ClientConfig = require("Quest/Client/Q12017ClientConfig")

local subIDs = Q12017ClientConfig.SubIDs
local npcs = Q12017ClientConfig.Npcs

function Q1201701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1201701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1201701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12017"):FinishQuestID(false, 1201701)
    self:DestroySelf()
end

function Q1201701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1201701Trigger
