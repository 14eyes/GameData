require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615207Trigger = class("Q7615207Trigger", GadgetActorProxy)
Q7615207Trigger.defaultAlias = "Q7615207Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615207Trigger:OnPostDataPrepare()
    print("Q7615207Trigger - OnPostDataPrepare")
    this = self
end

function Q7615207Trigger:OnPostComponentPrepare()
    print("Q7615207Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615207Trigger:TriggerIn()
    print("Q7615207Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7615207})
    this:DestroySelf()
end

function Q7615207Trigger:PreTriggerIn()
    print("Q7615207Trigger - PreTriggerIn")
end

function Q7615207Trigger:LightUpTriggerIn()
    print("Q7615207Trigger - LightUpTriggerIn")
end

function Q7615207Trigger:TriggerOut()
    print("Q7615207Trigger - TriggerOut")
end

return Q7615207Trigger
