require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500809Trigger = class("Q1500809Trigger", GadgetActorProxy)
Q1500809Trigger.defaultAlias = "Q1500809Trigger"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500809Trigger:OnPostDataPrepare()
    print("Q1500809Trigger - OnPostDataPrepare")
    this = self
end

function Q1500809Trigger:OnPostComponentPrepare()
    print("Q1500809Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500809Trigger:TriggerIn()
    print("Q1500809Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1500809)
    this:DestroySelf()
end

function Q1500809Trigger:PreTriggerIn()
    print("Q1500809Trigger - PreTriggerIn")
end

function Q1500809Trigger:LightUpTriggerIn()
    print("Q1500809Trigger - LightUpTriggerIn")
end

function Q1500809Trigger:TriggerOut()
    print("Q1500809Trigger - TriggerOut")
end

return Q1500809Trigger
