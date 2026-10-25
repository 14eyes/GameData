require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73239Trigger = class("Q73239Trigger", GadgetActorProxy)
Q73239Trigger.defaultAlias = "Q73239Trigger"
local subIDs = require("Quest/Client/Q73239ClientConfig").SubIDs

function Q73239Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73239Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73239Trigger:TriggerIn()
    print("TriggerIn")
    if actorUtils.IsLevelTagValid(38, true) then
        actorUtils.FinishQuestID(false, 7323901)
        self:DestroySelf()
    end
end

function Q73239Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73239Trigger
