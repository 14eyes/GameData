require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226913Trigger = class("Q7226913Trigger", GadgetActorProxy)
Q7226913Trigger.defaultAlias = "Q7226913Trigger"
local Q72269ClientConfig = require("Quest/Client/Q72269ClientConfig")

local subIDs = Q72269ClientConfig.SubIDs
local npcs = Q72269ClientConfig.Npcs

function Q7226913Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226913Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.741323, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226913Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72269"):FinishQuestID(false, 7226913)
    self:DestroySelf()
end

function Q7226913Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226913Trigger
