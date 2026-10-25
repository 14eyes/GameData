require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001009Trigger = class("Q1001009Trigger", GadgetActorProxy)
Q1001009Trigger.defaultAlias = "Q1001009Trigger"
local Q10010ClientConfig = require("Quest/Client/Q10010ClientConfig")

local this
local subIDs = Q10010ClientConfig.SubIDs
local npcs = Q10010ClientConfig.Npcs
local points = Q10010ClientConfig.Points

function Q1001009Trigger:OnPostDataPrepare()
    print("Q1001009Trigger - OnPostDataPrepare")
    this = self
end

function Q1001009Trigger:OnPostComponentPrepare()
    print("Q1001009Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10010)
end

function Q1001009Trigger:TriggerIn()
    print("Q1001009Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1001009)
    this:DestroySelf()
end

function Q1001009Trigger:PreTriggerIn()
    print("Q1001009Trigger - PreTriggerIn")
end

function Q1001009Trigger:LightUpTriggerIn()
    print("Q1001009Trigger - LightUpTriggerIn")
end

function Q1001009Trigger:TriggerOut()
    print("Q1001009Trigger - TriggerOut")
end

return Q1001009Trigger
