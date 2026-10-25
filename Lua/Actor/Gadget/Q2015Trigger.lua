require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2015Trigger = class("Q2015Trigger", GadgetActorProxy)
Q2015Trigger.defaultAlias = "Q2015Trigger"
local Q2015ClientConfig = require("Quest/Client/Q2015ClientConfig")

local subIDs = Q2015ClientConfig.SubIDs
local npcs = Q2015ClientConfig.Npcs

function Q2015Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2015Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2015Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2015"):FinishQuestID(false, 201502)
    self:DestroySelf()
end

function Q2015Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2015Trigger
