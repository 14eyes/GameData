require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713001Trigger = class("Q7713001Trigger", GadgetActorProxy)
Q7713001Trigger.defaultAlias = "Q7713001Trigger"
local Q77130ClientConfig = require("Quest/Client/Q77130ClientConfig")

local this
local subIDs = Q77130ClientConfig.SubIDs
local datas = Q77130ClientConfig.Datas
local npcs = Q77130ClientConfig.Npcs
local points = Q77130ClientConfig.Points

function Q7713001Trigger:OnPostDataPrepare()
    print("Q7713001Trigger - OnPostDataPrepare")
    this = self
end

function Q7713001Trigger:OnPostComponentPrepare()
    print("Q7713001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(180, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77130)
end

function Q7713001Trigger:TriggerIn()
    print("Q7713001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713001})
    this:DestroySelf()
end

function Q7713001Trigger:PreTriggerIn()
    print("Q7713001Trigger - PreTriggerIn")
end

function Q7713001Trigger:LightUpTriggerIn()
    print("Q7713001Trigger - LightUpTriggerIn")
end

function Q7713001Trigger:TriggerOut()
    print("Q7713001Trigger - TriggerOut")
end

return Q7713001Trigger
