require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504008Trigger = class("Q1504008Trigger", GadgetActorProxy)
Q1504008Trigger.defaultAlias = "Q1504008Trigger"
local Q15040ClientConfig = require("Quest/Client/Q15040ClientConfig")

local this
local subIDs = Q15040ClientConfig.SubIDs
local datas = Q15040ClientConfig.Datas
local npcs = Q15040ClientConfig.Npcs
local points = Q15040ClientConfig.Points

function Q1504008Trigger:OnPostDataPrepare()
    print("Q1504008Trigger - OnPostDataPrepare")
    this = self
end

function Q1504008Trigger:OnPostComponentPrepare()
    print("Q1504008Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(3, 4.7997327, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15040)
end

function Q1504008Trigger:TriggerIn()
    print("Q1504008Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504008)
    this:DestroySelf()
end

function Q1504008Trigger:PreTriggerIn()
    print("Q1504008Trigger - PreTriggerIn")
end

function Q1504008Trigger:LightUpTriggerIn()
    print("Q1504008Trigger - LightUpTriggerIn")
end

function Q1504008Trigger:TriggerOut()
    print("Q1504008Trigger - TriggerOut")
end

return Q1504008Trigger
