require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504013Trigger = class("Q1504013Trigger", GadgetActorProxy)
Q1504013Trigger.defaultAlias = "Q1504013Trigger"
local Q15040ClientConfig = require("Quest/Client/Q15040ClientConfig")

local this
local subIDs = Q15040ClientConfig.SubIDs
local datas = Q15040ClientConfig.Datas
local npcs = Q15040ClientConfig.Npcs
local points = Q15040ClientConfig.Points

function Q1504013Trigger:OnPostDataPrepare()
    print("Q1504013Trigger - OnPostDataPrepare")
    this = self
end

function Q1504013Trigger:OnPostComponentPrepare()
    print("Q1504013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20.271511, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15040)
end

function Q1504013Trigger:TriggerIn()
    print("Q1504013Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504013)
    this:DestroySelf()
end

function Q1504013Trigger:PreTriggerIn()
    print("Q1504013Trigger - PreTriggerIn")
end

function Q1504013Trigger:LightUpTriggerIn()
    print("Q1504013Trigger - LightUpTriggerIn")
end

function Q1504013Trigger:TriggerOut()
    print("Q1504013Trigger - TriggerOut")
end

return Q1504013Trigger
