require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504216Trigger = class("Q1504216Trigger", GadgetActorProxy)
Q1504216Trigger.defaultAlias = "Q1504216Trigger"
local Q15042ClientConfig = require("Quest/Client/Q15042ClientConfig")

local this
local subIDs = Q15042ClientConfig.SubIDs
local datas = Q15042ClientConfig.Datas
local npcs = Q15042ClientConfig.Npcs
local points = Q15042ClientConfig.Points

function Q1504216Trigger:OnPostDataPrepare()
    print("Q1504216Trigger - OnPostDataPrepare")
    this = self
end

function Q1504216Trigger:OnPostComponentPrepare()
    print("Q1504216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15042)
end

function Q1504216Trigger:TriggerIn()
    print("Q1504216Trigger - TriggerIn")
    actorUtils.TryDoSkill(1, 0)
    this:DestroySelf()
end

function Q1504216Trigger:PreTriggerIn()
    print("Q1504216Trigger - PreTriggerIn")
end

function Q1504216Trigger:LightUpTriggerIn()
    print("Q1504216Trigger - LightUpTriggerIn")
end

function Q1504216Trigger:TriggerOut()
    print("Q1504216Trigger - TriggerOut")
end

return Q1504216Trigger
