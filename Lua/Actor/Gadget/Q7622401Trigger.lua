require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622401Trigger = class("Q7622401Trigger", GadgetActorProxy)
Q7622401Trigger.defaultAlias = "Q7622401Trigger"
local Q76224ClientConfig = require("Quest/Client/Q76224ClientConfig")

local this
local subIDs = Q76224ClientConfig.SubIDs
local points = Q76224ClientConfig.Points

function Q7622401Trigger:OnPostDataPrepare()
    print("Q7622401Trigger - OnPostDataPrepare")
    this = self
end

function Q7622401Trigger:OnPostComponentPrepare()
    print("Q7622401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76224)
end

function Q7622401Trigger:TriggerIn()
    print("Q7622401Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622401})
    this:DestroySelf()
end

function Q7622401Trigger:PreTriggerIn()
    print("Q7622401Trigger - PreTriggerIn")
end

function Q7622401Trigger:LightUpTriggerIn()
    print("Q7622401Trigger - LightUpTriggerIn")
end

function Q7622401Trigger:TriggerOut()
    print("Q7622401Trigger - TriggerOut")
end

return Q7622401Trigger
