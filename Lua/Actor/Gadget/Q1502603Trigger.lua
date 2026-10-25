require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502603Trigger = class("Q1502603Trigger", GadgetActorProxy)
Q1502603Trigger.defaultAlias = "Q1502603Trigger"
local Q15026ClientConfig = require("Quest/Client/Q15026ClientConfig")

local this
local subIDs = Q15026ClientConfig.SubIDs
local datas = Q15026ClientConfig.Datas
local npcs = Q15026ClientConfig.Npcs
local points = Q15026ClientConfig.Points

function Q1502603Trigger:OnPostDataPrepare()
    print("Q1502603Trigger - OnPostDataPrepare")
    this = self
end

function Q1502603Trigger:OnPostComponentPrepare()
    print("Q1502603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15026)
end

function Q1502603Trigger:TriggerIn()
    print("Q1502603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502603)
    this:DestroySelf()
end

function Q1502603Trigger:PreTriggerIn()
    print("Q1502603Trigger - PreTriggerIn")
end

function Q1502603Trigger:LightUpTriggerIn()
    print("Q1502603Trigger - LightUpTriggerIn")
end

function Q1502603Trigger:TriggerOut()
    print("Q1502603Trigger - TriggerOut")
end

return Q1502603Trigger
