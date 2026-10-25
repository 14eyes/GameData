require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226809Trigger = class("Q7226809Trigger", GadgetActorProxy)
Q7226809Trigger.defaultAlias = "Q7226809Trigger"
local Q72268ClientConfig = require("Quest/Client/Q72268ClientConfig")

local subIDs = Q72268ClientConfig.SubIDs
local npcs = Q72268ClientConfig.Npcs

function Q7226809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4.232815, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226809Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72268"):FinishQuestID(false, 7226809)
    self:DestroySelf()
end

function Q7226809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226809Trigger
