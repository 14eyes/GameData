require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713103Trigger = class("Q7713103Trigger", GadgetActorProxy)
Q7713103Trigger.defaultAlias = "Q7713103Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713103Trigger:OnPostDataPrepare()
    print("Q7713103Trigger - OnPostDataPrepare")
    this = self
end

function Q7713103Trigger:OnPostComponentPrepare()
    print("Q7713103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713103Trigger:TriggerIn()
    print("Q7713103Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713103})
    this:DestroySelf()
end

function Q7713103Trigger:PreTriggerIn()
    print("Q7713103Trigger - PreTriggerIn")
end

function Q7713103Trigger:LightUpTriggerIn()
    print("Q7713103Trigger - LightUpTriggerIn")
end

function Q7713103Trigger:TriggerOut()
    print("Q7713103Trigger - TriggerOut")
end

return Q7713103Trigger
