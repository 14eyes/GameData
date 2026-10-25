require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504014Trigger = class("Q1504014Trigger", GadgetActorProxy)
Q1504014Trigger.defaultAlias = "Q1504014Trigger"
local Q15040ClientConfig = require("Quest/Client/Q15040ClientConfig")

local this
local subIDs = Q15040ClientConfig.SubIDs
local datas = Q15040ClientConfig.Datas
local npcs = Q15040ClientConfig.Npcs
local points = Q15040ClientConfig.Points

function Q1504014Trigger:OnPostDataPrepare()
    print("Q1504014Trigger - OnPostDataPrepare")
    this = self
end

function Q1504014Trigger:OnPostComponentPrepare()
    print("Q1504014Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15040)
end

function Q1504014Trigger:TriggerIn()
    print("Q1504014Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504014)
    this:DestroySelf()
end

function Q1504014Trigger:PreTriggerIn()
    print("Q1504014Trigger - PreTriggerIn")
end

function Q1504014Trigger:LightUpTriggerIn()
    print("Q1504014Trigger - LightUpTriggerIn")
end

function Q1504014Trigger:TriggerOut()
    print("Q1504014Trigger - TriggerOut")
end

return Q1504014Trigger
