require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1602002Trigger = class("Q1602002Trigger", GadgetActorProxy)
Q1602002Trigger.defaultAlias = "Q1602002Trigger"
local Q16020ClientConfig = require("Quest/Client/Q16020ClientConfig")

local this
local subIDs = Q16020ClientConfig.SubIDs
local datas = Q16020ClientConfig.Datas
local npcs = Q16020ClientConfig.Npcs
local points = Q16020ClientConfig.Points

function Q1602002Trigger:OnPostDataPrepare()
    print("Q1602002Trigger - OnPostDataPrepare")
    this = self
end

function Q1602002Trigger:OnPostComponentPrepare()
    print("Q1602002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16020)
end

function Q1602002Trigger:TriggerIn()
    print("Q1602002Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1602002)
    this:DestroySelf()
end

function Q1602002Trigger:PreTriggerIn()
    print("Q1602002Trigger - PreTriggerIn")
end

function Q1602002Trigger:LightUpTriggerIn()
    print("Q1602002Trigger - LightUpTriggerIn")
end

function Q1602002Trigger:TriggerOut()
    print("Q1602002Trigger - TriggerOut")
end

return Q1602002Trigger
