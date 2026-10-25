require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1602018Trigger = class("Q1602018Trigger", GadgetActorProxy)
Q1602018Trigger.defaultAlias = "Q1602018Trigger"
local Q16020ClientConfig = require("Quest/Client/Q16020ClientConfig")

local this
local subIDs = Q16020ClientConfig.SubIDs
local datas = Q16020ClientConfig.Datas
local npcs = Q16020ClientConfig.Npcs
local points = Q16020ClientConfig.Points

function Q1602018Trigger:OnPostDataPrepare()
    print("Q1602018Trigger - OnPostDataPrepare")
    this = self
end

function Q1602018Trigger:OnPostComponentPrepare()
    print("Q1602018Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16020)
end

function Q1602018Trigger:TriggerIn()
    print("Q1602018Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1602018})
    this:DestroySelf()
end

function Q1602018Trigger:PreTriggerIn()
    print("Q1602018Trigger - PreTriggerIn")
end

function Q1602018Trigger:LightUpTriggerIn()
    print("Q1602018Trigger - LightUpTriggerIn")
end

function Q1602018Trigger:TriggerOut()
    print("Q1602018Trigger - TriggerOut")
end

return Q1602018Trigger
