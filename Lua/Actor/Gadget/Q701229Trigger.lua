require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701229Trigger = class("Q701229Trigger", GadgetActorProxy)
Q701229Trigger.defaultAlias = "Q701229Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701229Trigger:OnPostDataPrepare()
    print("Q701229Trigger - OnPostDataPrepare")
    this = self
end

function Q701229Trigger:OnPostComponentPrepare()
    print("Q701229Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8.831975, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701229Trigger:TriggerIn()
    print("Q701229Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701229})
    this:DestroySelf()
end

function Q701229Trigger:PreTriggerIn()
    print("Q701229Trigger - PreTriggerIn")
end

function Q701229Trigger:LightUpTriggerIn()
    print("Q701229Trigger - LightUpTriggerIn")
end

function Q701229Trigger:TriggerOut()
    print("Q701229Trigger - TriggerOut")
end

return Q701229Trigger
