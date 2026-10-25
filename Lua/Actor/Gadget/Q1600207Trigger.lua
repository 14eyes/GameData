require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600207Trigger = class("Q1600207Trigger", GadgetActorProxy)
Q1600207Trigger.defaultAlias = "Q1600207Trigger"
local Q16002ClientConfig = require("Quest/Client/Q16002ClientConfig")

local this
local subIDs = Q16002ClientConfig.SubIDs
local datas = Q16002ClientConfig.Datas
local npcs = Q16002ClientConfig.Npcs
local points = Q16002ClientConfig.Points

function Q1600207Trigger:OnPostDataPrepare()
    print("Q1600207Trigger - OnPostDataPrepare")
    this = self
end

function Q1600207Trigger:OnPostComponentPrepare()
    print("Q1600207Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(7, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16002)
end

function Q1600207Trigger:TriggerIn()
    print("Q1600207Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600207)
    this:DestroySelf()
end

function Q1600207Trigger:PreTriggerIn()
    print("Q1600207Trigger - PreTriggerIn")
end

function Q1600207Trigger:LightUpTriggerIn()
    print("Q1600207Trigger - LightUpTriggerIn")
end

function Q1600207Trigger:TriggerOut()
    print("Q1600207Trigger - TriggerOut")
end

return Q1600207Trigger
