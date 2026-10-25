require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404608Trigger = class("Q1404608Trigger", GadgetActorProxy)
Q1404608Trigger.defaultAlias = "Q1404608Trigger"
local Q14046ClientConfig = require("Quest/Client/Q14046ClientConfig")

local this
local subIDs = Q14046ClientConfig.SubIDs
local datas = Q14046ClientConfig.Datas
local npcs = Q14046ClientConfig.Npcs
local points = Q14046ClientConfig.Points

function Q1404608Trigger:OnPostDataPrepare()
    print("Q1404608Trigger - OnPostDataPrepare")
    this = self
end

function Q1404608Trigger:OnPostComponentPrepare()
    print("Q1404608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14046)
end

function Q1404608Trigger:TriggerIn()
    print("Q1404608Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1404608)
    this:DestroySelf()
end

function Q1404608Trigger:PreTriggerIn()
    print("Q1404608Trigger - PreTriggerIn")
end

function Q1404608Trigger:LightUpTriggerIn()
    print("Q1404608Trigger - LightUpTriggerIn")
end

function Q1404608Trigger:TriggerOut()
    print("Q1404608Trigger - TriggerOut")
end

return Q1404608Trigger
