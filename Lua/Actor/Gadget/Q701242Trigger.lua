require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701242Trigger = class("Q701242Trigger", GadgetActorProxy)
Q701242Trigger.defaultAlias = "Q701242Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701242Trigger:OnPostDataPrepare()
    print("Q701242Trigger - OnPostDataPrepare")
    this = self
end

function Q701242Trigger:OnPostComponentPrepare()
    print("Q701242Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12.341407, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701242Trigger:TriggerIn()
    print("Q701242Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701242})
    this:DestroySelf()
end

function Q701242Trigger:PreTriggerIn()
    print("Q701242Trigger - PreTriggerIn")
end

function Q701242Trigger:LightUpTriggerIn()
    print("Q701242Trigger - LightUpTriggerIn")
end

function Q701242Trigger:TriggerOut()
    print("Q701242Trigger - TriggerOut")
end

return Q701242Trigger
