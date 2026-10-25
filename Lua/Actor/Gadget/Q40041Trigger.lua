require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40041Trigger = class("Q40041Trigger", GadgetActorProxy)
Q40041Trigger.defaultAlias = "Q40041Trigger"
local subIDs = require("Quest/Client/Q40041ClientConfig").SubIDs

function Q40041Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40041Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, sceneData:GetDummyPoint(3, "Q4004101_N1045_310701338"), self.TriggerIn, self.TriggerOut)
end

function Q40041Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40041"):FinishQuestID(false, 4004101)
    self:DestroySelf()
end

function Q40041Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40041Trigger
