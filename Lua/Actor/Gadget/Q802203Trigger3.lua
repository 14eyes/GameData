require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q802203Trigger3 = class("Q802203Trigger3", GadgetActorProxy)
Q802203Trigger3.defaultAlias = "Q802203Trigger3"
local Q8022ClientConfig = require("Quest/Client/Q8022ClientConfig")

local this
local subIDs = Q8022ClientConfig.SubIDs
local points = Q8022ClientConfig.Points

function Q802203Trigger3:OnPostDataPrepare()
    print("Q802203Trigger3 - OnPostDataPrepare")
    this = self
end

function Q802203Trigger3:OnPostComponentPrepare()
    print("Q802203Trigger3 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8022)
end

function Q802203Trigger3:TriggerIn()
    print("Q802203Trigger3 - TriggerIn")
    actorUtils.FinishQuestID(true, 802203)
    this:DestroySelf()
end

function Q802203Trigger3:PreTriggerIn()
    print("Q802203Trigger3 - PreTriggerIn")
end

function Q802203Trigger3:LightUpTriggerIn()
    print("Q802203Trigger3 - LightUpTriggerIn")
end

function Q802203Trigger3:TriggerOut()
    print("Q802203Trigger3 - TriggerOut")
end

return Q802203Trigger3
