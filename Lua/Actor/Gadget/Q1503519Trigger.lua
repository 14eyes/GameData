require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503519Trigger = class("Q1503519Trigger", GadgetActorProxy)
Q1503519Trigger.defaultAlias = "Q1503519Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503519Trigger:OnPostDataPrepare()
    print("Q1503519Trigger - OnPostDataPrepare")
    this = self
end

function Q1503519Trigger:OnPostComponentPrepare()
    print("Q1503519Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503519Trigger:TriggerIn()
    print("Q1503519Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1503509)
    this:DestroySelf()
end

function Q1503519Trigger:PreTriggerIn()
    print("Q1503519Trigger - PreTriggerIn")
end

function Q1503519Trigger:LightUpTriggerIn()
    print("Q1503519Trigger - LightUpTriggerIn")
end

function Q1503519Trigger:TriggerOut()
    print("Q1503519Trigger - TriggerOut")
end

return Q1503519Trigger
