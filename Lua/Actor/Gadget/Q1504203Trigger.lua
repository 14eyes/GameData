require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504203Trigger = class("Q1504203Trigger", GadgetActorProxy)
Q1504203Trigger.defaultAlias = "Q1504203Trigger"
local Q15042ClientConfig = require("Quest/Client/Q15042ClientConfig")

local this
local subIDs = Q15042ClientConfig.SubIDs
local datas = Q15042ClientConfig.Datas
local npcs = Q15042ClientConfig.Npcs
local points = Q15042ClientConfig.Points

function Q1504203Trigger:OnPostDataPrepare()
    print("Q1504203Trigger - OnPostDataPrepare")
    this = self
end

function Q1504203Trigger:OnPostComponentPrepare()
    print("Q1504203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15042)
end

function Q1504203Trigger:TriggerIn()
    print("Q1504203Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504203)
    this:DestroySelf()
end

function Q1504203Trigger:PreTriggerIn()
    print("Q1504203Trigger - PreTriggerIn")
end

function Q1504203Trigger:LightUpTriggerIn()
    print("Q1504203Trigger - LightUpTriggerIn")
end

function Q1504203Trigger:TriggerOut()
    print("Q1504203Trigger - TriggerOut")
end

return Q1504203Trigger
