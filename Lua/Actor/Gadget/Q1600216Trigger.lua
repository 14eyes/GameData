require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600216Trigger = class("Q1600216Trigger", GadgetActorProxy)
Q1600216Trigger.defaultAlias = "Q1600216Trigger"
local Q16002ClientConfig = require("Quest/Client/Q16002ClientConfig")

local this
local subIDs = Q16002ClientConfig.SubIDs
local datas = Q16002ClientConfig.Datas
local npcs = Q16002ClientConfig.Npcs
local points = Q16002ClientConfig.Points

function Q1600216Trigger:OnPostDataPrepare()
    print("Q1600216Trigger - OnPostDataPrepare")
    this = self
end

function Q1600216Trigger:OnPostComponentPrepare()
    print("Q1600216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16002)
end

function Q1600216Trigger:TriggerIn()
    print("Q1600216Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600216)
    this:DestroySelf()
end

function Q1600216Trigger:PreTriggerIn()
    print("Q1600216Trigger - PreTriggerIn")
end

function Q1600216Trigger:LightUpTriggerIn()
    print("Q1600216Trigger - LightUpTriggerIn")
end

function Q1600216Trigger:TriggerOut()
    print("Q1600216Trigger - TriggerOut")
end

return Q1600216Trigger
