require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713101Trigger = class("Q7713101Trigger", GadgetActorProxy)
Q7713101Trigger.defaultAlias = "Q7713101Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713101Trigger:OnPostDataPrepare()
    print("Q7713101Trigger - OnPostDataPrepare")
    this = self
end

function Q7713101Trigger:OnPostComponentPrepare()
    print("Q7713101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713101Trigger:TriggerIn()
    print("Q7713101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713101})
    this:DestroySelf()
end

function Q7713101Trigger:PreTriggerIn()
    print("Q7713101Trigger - PreTriggerIn")
end

function Q7713101Trigger:LightUpTriggerIn()
    print("Q7713101Trigger - LightUpTriggerIn")
end

function Q7713101Trigger:TriggerOut()
    print("Q7713101Trigger - TriggerOut")
end

return Q7713101Trigger
