require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502211Trigger = class("Q1502211Trigger", GadgetActorProxy)
Q1502211Trigger.defaultAlias = "Q1502211Trigger"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502211Trigger:OnPostDataPrepare()
    print("Q1502211Trigger - OnPostDataPrepare")
    this = self
end

function Q1502211Trigger:OnPostComponentPrepare()
    print("Q1502211Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 455, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502211Trigger:TriggerIn()
    print("Q1502211Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502211)
    this:DestroySelf()
end

function Q1502211Trigger:PreTriggerIn()
    print("Q1502211Trigger - PreTriggerIn")
end

function Q1502211Trigger:LightUpTriggerIn()
    print("Q1502211Trigger - LightUpTriggerIn")
end

function Q1502211Trigger:TriggerOut()
    print("Q1502211Trigger - TriggerOut")
end

return Q1502211Trigger
