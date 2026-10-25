require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226808Trigger = class("Q7226808Trigger", GadgetActorProxy)
Q7226808Trigger.defaultAlias = "Q7226808Trigger"
local Q72268ClientConfig = require("Quest/Client/Q72268ClientConfig")

local subIDs = Q72268ClientConfig.SubIDs
local npcs = Q72268ClientConfig.Npcs

function Q7226808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23.67457, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226808Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72268"):FinishQuestID(false, 7226808)
    self:DestroySelf()
end

function Q7226808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226808Trigger
