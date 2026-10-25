require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73001Trigger = class("Q73001Trigger", GadgetActorProxy)
Q73001Trigger.defaultAlias = "Q73001Trigger"
local subIDs = require("Quest/Client/Q73001ClientConfig").SubIDs

function Q73001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73001"):FinishQuestID(false, 7300102)
    self:DestroySelf()
end

function Q73001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73001Trigger
