require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73229Trigger1 = class("Q73229Trigger1", GadgetActorProxy)
Q73229Trigger1.defaultAlias = "Q73229Trigger1"
local subIDs = require("Quest/Client/Q73229ClientConfig").SubIDs

function Q73229Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73229Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73229Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322902)
    self:DestroySelf()
end

function Q73229Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73229Trigger1
