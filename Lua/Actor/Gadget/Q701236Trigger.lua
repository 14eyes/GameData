require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701236Trigger = class("Q701236Trigger", GadgetActorProxy)
Q701236Trigger.defaultAlias = "Q701236Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701236Trigger:OnPostDataPrepare()
    print("Q701236Trigger - OnPostDataPrepare")
    this = self
end

function Q701236Trigger:OnPostComponentPrepare()
    print("Q701236Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11.65175, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701236Trigger:TriggerIn()
    print("Q701236Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701236})
    this:DestroySelf()
end

function Q701236Trigger:PreTriggerIn()
    print("Q701236Trigger - PreTriggerIn")
end

function Q701236Trigger:LightUpTriggerIn()
    print("Q701236Trigger - LightUpTriggerIn")
end

function Q701236Trigger:TriggerOut()
    print("Q701236Trigger - TriggerOut")
end

return Q701236Trigger
