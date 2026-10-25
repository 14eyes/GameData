require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713007Trigger = class("Q7713007Trigger", GadgetActorProxy)
Q7713007Trigger.defaultAlias = "Q7713007Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713007Trigger:OnPostDataPrepare()
    print("Q7713007Trigger - OnPostDataPrepare")
    this = self
end

function Q7713007Trigger:OnPostComponentPrepare()
    print("Q7713007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713007Trigger:TriggerIn()
    print("Q7713007Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713007})
    this:DestroySelf()
end

function Q7713007Trigger:PreTriggerIn()
    print("Q7713007Trigger - PreTriggerIn")
end

function Q7713007Trigger:LightUpTriggerIn()
    print("Q7713007Trigger - LightUpTriggerIn")
end

function Q7713007Trigger:TriggerOut()
    print("Q7713007Trigger - TriggerOut")
end

return Q7713007Trigger
