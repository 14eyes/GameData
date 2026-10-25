require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602704Trigger = class("Q7602704Trigger", GadgetActorProxy)
Q7602704Trigger.defaultAlias = "Q7602704Trigger"
local Q76027ClientConfig = require("Quest/Client/Q76027ClientConfig")

local this
local subIDs = Q76027ClientConfig.SubIDs
local datas = Q76027ClientConfig.Datas
local npcs = Q76027ClientConfig.Npcs
local points = Q76027ClientConfig.Points

function Q7602704Trigger:OnPostDataPrepare()
    print("Q7602704Trigger - OnPostDataPrepare")
    this = self
end

function Q7602704Trigger:OnPostComponentPrepare()
    print("Q7602704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76027)
end

function Q7602704Trigger:TriggerIn()
    print("Q7602704Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602704)
    this:DestroySelf()
end

function Q7602704Trigger:PreTriggerIn()
    print("Q7602704Trigger - PreTriggerIn")
end

function Q7602704Trigger:LightUpTriggerIn()
    print("Q7602704Trigger - LightUpTriggerIn")
end

function Q7602704Trigger:TriggerOut()
    print("Q7602704Trigger - TriggerOut")
end

return Q7602704Trigger
