require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226908Trigger = class("Q7226908Trigger", GadgetActorProxy)
Q7226908Trigger.defaultAlias = "Q7226908Trigger"
local Q72269ClientConfig = require("Quest/Client/Q72269ClientConfig")

local subIDs = Q72269ClientConfig.SubIDs
local npcs = Q72269ClientConfig.Npcs

function Q7226908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226908Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72269"):FinishQuestID(false, 7226908)
    self:DestroySelf()
end

function Q7226908Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226908Trigger
