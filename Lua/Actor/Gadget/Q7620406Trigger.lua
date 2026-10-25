require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620406Trigger = class("Q7620406Trigger", GadgetActorProxy)
Q7620406Trigger.defaultAlias = "Q7620406Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620406Trigger:OnPostDataPrepare()
    print("Q7620406Trigger - OnPostDataPrepare")
    this = self
end

function Q7620406Trigger:OnPostComponentPrepare()
    print("Q7620406Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620406Trigger:TriggerIn()
    print("Q7620406Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7620406})
    this:DestroySelf()
end

function Q7620406Trigger:PreTriggerIn()
    print("Q7620406Trigger - PreTriggerIn")
end

function Q7620406Trigger:LightUpTriggerIn()
    print("Q7620406Trigger - LightUpTriggerIn")
end

function Q7620406Trigger:TriggerOut()
    print("Q7620406Trigger - TriggerOut")
end

return Q7620406Trigger
