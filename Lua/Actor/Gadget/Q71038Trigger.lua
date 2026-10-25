require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71038Trigger = class("Q71038Trigger", GadgetActorProxy)
Q71038Trigger.defaultAlias = "Q71038Trigger"
local subIDs = require("Quest/Client/Q71038ClientConfig").SubIDs

function Q71038Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71038Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71038Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71038"):FinishQuestID(false, 7103803)
    self:DestroySelf()
end

function Q71038Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71038Trigger
