require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72250Trigger = class("Q72250Trigger", GadgetActorProxy)
Q72250Trigger.defaultAlias = "Q72250Trigger"
local Q72250ClientConfig = require("Quest/Client/Q72250ClientConfig")

local subIDs = Q72250ClientConfig.SubIDs
local npcs = Q72250ClientConfig.Npcs

function Q72250Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72250Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72250Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72250"):FinishQuestID(false, 7225002)
    self:DestroySelf()
end

function Q72250Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72250Trigger
