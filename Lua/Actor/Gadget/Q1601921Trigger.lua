require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601921Trigger = class("Q1601921Trigger", GadgetActorProxy)
Q1601921Trigger.defaultAlias = "Q1601921Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601921Trigger:OnPostDataPrepare()
    print("Q1601921Trigger - OnPostDataPrepare")
    this = self
end

function Q1601921Trigger:OnPostComponentPrepare()
    print("Q1601921Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601921Trigger:TriggerIn()
    print("Q1601921Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1601921)
    this:DestroySelf()
end

function Q1601921Trigger:PreTriggerIn()
    print("Q1601921Trigger - PreTriggerIn")
end

function Q1601921Trigger:LightUpTriggerIn()
    print("Q1601921Trigger - LightUpTriggerIn")
end

function Q1601921Trigger:TriggerOut()
    print("Q1601921Trigger - TriggerOut")
end

return Q1601921Trigger
