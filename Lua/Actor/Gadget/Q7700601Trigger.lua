require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700601Trigger = class("Q7700601Trigger", GadgetActorProxy)
Q7700601Trigger.defaultAlias = "Q7700601Trigger"
local Q77006ClientConfig = require("Quest/Client/Q77006ClientConfig")

local this
local subIDs = Q77006ClientConfig.SubIDs
local datas = Q77006ClientConfig.Datas
local npcs = Q77006ClientConfig.Npcs
local points = Q77006ClientConfig.Points

function Q7700601Trigger:OnPostDataPrepare()
    print("Q7700601Trigger - OnPostDataPrepare")
    this = self
end

function Q7700601Trigger:OnPostComponentPrepare()
    print("Q7700601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77006)
end

function Q7700601Trigger:TriggerIn()
    print("Q7700601Trigger - TriggerIn")
    actorMgr:GetActor("77006"):TransmitPlayerWithQuestIdByData(7700601, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q7700601Trigger:PreTriggerIn()
    print("Q7700601Trigger - PreTriggerIn")
end

function Q7700601Trigger:LightUpTriggerIn()
    print("Q7700601Trigger - LightUpTriggerIn")
end

function Q7700601Trigger:TriggerOut()
    print("Q7700601Trigger - TriggerOut")
end

return Q7700601Trigger
