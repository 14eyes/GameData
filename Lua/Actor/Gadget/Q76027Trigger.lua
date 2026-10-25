require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76027Trigger = class("Q76027Trigger", GadgetActorProxy)
Q76027Trigger.defaultAlias = "Q76027Trigger"
local Q76027ClientConfig = require("Quest/Client/Q76027ClientConfig")

local this
local subIDs = Q76027ClientConfig.SubIDs
local datas = Q76027ClientConfig.Datas
local npcs = Q76027ClientConfig.Npcs
local points = Q76027ClientConfig.Points

function Q76027Trigger:OnPostDataPrepare()
    print("Q76027Trigger - OnPostDataPrepare")
    this = self
end

function Q76027Trigger:OnPostComponentPrepare()
    print("Q76027Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(41.95795, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76027)
end

function Q76027Trigger:TriggerIn()
    print("Q76027Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602709)
    this:DestroySelf()
end

function Q76027Trigger:PreTriggerIn()
    print("Q76027Trigger - PreTriggerIn")
end

function Q76027Trigger:LightUpTriggerIn()
    print("Q76027Trigger - LightUpTriggerIn")
end

function Q76027Trigger:TriggerOut()
    print("Q76027Trigger - TriggerOut")
end

return Q76027Trigger
