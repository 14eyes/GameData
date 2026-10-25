require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1602017Trigger = class("Q1602017Trigger", GadgetActorProxy)
Q1602017Trigger.defaultAlias = "Q1602017Trigger"
local Q16020ClientConfig = require("Quest/Client/Q16020ClientConfig")

local this
local subIDs = Q16020ClientConfig.SubIDs
local datas = Q16020ClientConfig.Datas
local npcs = Q16020ClientConfig.Npcs
local points = Q16020ClientConfig.Points

function Q1602017Trigger:OnPostDataPrepare()
    print("Q1602017Trigger - OnPostDataPrepare")
    this = self
end

function Q1602017Trigger:OnPostComponentPrepare()
    print("Q1602017Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16020)
end

function Q1602017Trigger:TriggerIn()
    print("Q1602017Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false})
    this:DestroySelf()
end

function Q1602017Trigger:PreTriggerIn()
    print("Q1602017Trigger - PreTriggerIn")
end

function Q1602017Trigger:LightUpTriggerIn()
    print("Q1602017Trigger - LightUpTriggerIn")
end

function Q1602017Trigger:TriggerOut()
    print("Q1602017Trigger - TriggerOut")
end

return Q1602017Trigger
