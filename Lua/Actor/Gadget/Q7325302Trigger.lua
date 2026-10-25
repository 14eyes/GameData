require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325302Trigger = class("Q7325302Trigger", GadgetActorProxy)
Q7325302Trigger.defaultAlias = "Q7325302Trigger"
local Q73253ClientConfig = require("Quest/Client/Q73253ClientConfig")

local this
local subIDs = Q73253ClientConfig.SubIDs

function Q7325302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325302Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325301)
    this:DestroySelf()
end

function Q7325302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325302Trigger
