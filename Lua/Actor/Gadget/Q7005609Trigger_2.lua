require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005609Trigger_2 = class("Q7005609Trigger_2", GadgetActorProxy)
Q7005609Trigger_2.defaultAlias = "Q7005609Trigger_2"
local Q70056ClientConfig = require("Quest/Client/Q70056ClientConfig")

local this
local subIDs = Q70056ClientConfig.SubIDs
local points = Q70056ClientConfig.Points

function Q7005609Trigger_2:OnPostDataPrepare()
    print("Q7005609Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7005609Trigger_2:OnPostComponentPrepare()
    print("Q7005609Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70056)
end

function Q7005609Trigger_2:TriggerIn()
    print("Q7005609Trigger_2 - TriggerIn")
    actorUtils.FinishQuestID(false, 7005609)
    this:DestroySelf()
end

function Q7005609Trigger_2:PreTriggerIn()
    print("Q7005609Trigger_2 - PreTriggerIn")
end

function Q7005609Trigger_2:LightUpTriggerIn()
    print("Q7005609Trigger_2 - LightUpTriggerIn")
end

function Q7005609Trigger_2:TriggerOut()
    print("Q7005609Trigger_2 - TriggerOut")
end

return Q7005609Trigger_2
