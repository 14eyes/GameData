require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713106Trigger = class("Q7713106Trigger", GadgetActorProxy)
Q7713106Trigger.defaultAlias = "Q7713106Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713106Trigger:OnPostDataPrepare()
    print("Q7713106Trigger - OnPostDataPrepare")
    this = self
end

function Q7713106Trigger:OnPostComponentPrepare()
    print("Q7713106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713106Trigger:TriggerIn()
    print("Q7713106Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713106})
    this:DestroySelf()
end

function Q7713106Trigger:PreTriggerIn()
    print("Q7713106Trigger - PreTriggerIn")
end

function Q7713106Trigger:LightUpTriggerIn()
    print("Q7713106Trigger - LightUpTriggerIn")
end

function Q7713106Trigger:TriggerOut()
    print("Q7713106Trigger - TriggerOut")
end

return Q7713106Trigger
