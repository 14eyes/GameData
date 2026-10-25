require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713018Trigger = class("Q7713018Trigger", GadgetActorProxy)
Q7713018Trigger.defaultAlias = "Q7713018Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713018Trigger:OnPostDataPrepare()
    print("Q7713018Trigger - OnPostDataPrepare")
    this = self
end

function Q7713018Trigger:OnPostComponentPrepare()
    print("Q7713018Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713018Trigger:TriggerIn()
    print("Q7713018Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713018})
    this:DestroySelf()
end

function Q7713018Trigger:PreTriggerIn()
    print("Q7713018Trigger - PreTriggerIn")
end

function Q7713018Trigger:LightUpTriggerIn()
    print("Q7713018Trigger - LightUpTriggerIn")
end

function Q7713018Trigger:TriggerOut()
    print("Q7713018Trigger - TriggerOut")
end

return Q7713018Trigger
