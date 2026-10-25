require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710406Trigger = class("Q7710406Trigger", GadgetActorProxy)
Q7710406Trigger.defaultAlias = "Q7710406Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710406Trigger:OnPostDataPrepare()
    print("Q7710406Trigger - OnPostDataPrepare")
    this = self
end

function Q7710406Trigger:OnPostComponentPrepare()
    print("Q7710406Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710406Trigger:TriggerIn()
    print("Q7710406Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7710406})
    this:DestroySelf()
end

function Q7710406Trigger:PreTriggerIn()
    print("Q7710406Trigger - PreTriggerIn")
end

function Q7710406Trigger:LightUpTriggerIn()
    print("Q7710406Trigger - LightUpTriggerIn")
end

function Q7710406Trigger:TriggerOut()
    print("Q7710406Trigger - TriggerOut")
end

return Q7710406Trigger
