require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325301Trigger = class("Q7325301Trigger", GadgetActorProxy)
Q7325301Trigger.defaultAlias = "Q7325301Trigger"
local subIDs = require("Quest/Client/Q73253ClientConfig").SubIDs

function Q7325301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7325301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325301Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325301)
    self:DestroySelf()
end

function Q7325301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325301Trigger
