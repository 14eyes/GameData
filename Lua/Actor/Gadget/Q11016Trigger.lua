require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11016Trigger = class("Q11016Trigger", GadgetActorProxy)
Q11016Trigger.defaultAlias = "Q11016Trigger"
local subIDs = require("Quest/Client/Q11016ClientConfig").SubIDs

function Q11016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11016Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11016"):FinishQuestID(false, 1101601)
    self:DestroySelf()
end

function Q11016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11016Trigger
