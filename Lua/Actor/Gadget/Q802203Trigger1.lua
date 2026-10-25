require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q802203Trigger1 = class("Q802203Trigger1", GadgetActorProxy)
Q802203Trigger1.defaultAlias = "Q802203Trigger1"
local Q8022ClientConfig = require("Quest/Client/Q8022ClientConfig")

local this
local subIDs = Q8022ClientConfig.SubIDs
local points = Q8022ClientConfig.Points

function Q802203Trigger1:OnPostDataPrepare()
    print("Q802203Trigger1 - OnPostDataPrepare")
    this = self
end

function Q802203Trigger1:OnPostComponentPrepare()
    print("Q802203Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8022)
end

function Q802203Trigger1:TriggerIn()
    print("Q802203Trigger1 - TriggerIn")
    actorUtils.FinishQuestID(true, 802203)
    this:DestroySelf()
end

function Q802203Trigger1:PreTriggerIn()
    print("Q802203Trigger1 - PreTriggerIn")
end

function Q802203Trigger1:LightUpTriggerIn()
    print("Q802203Trigger1 - LightUpTriggerIn")
end

function Q802203Trigger1:TriggerOut()
    print("Q802203Trigger1 - TriggerOut")
end

return Q802203Trigger1
