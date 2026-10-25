require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600610Trigger = class("Q600610Trigger", GadgetActorProxy)
Q600610Trigger.defaultAlias = "Q600610Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600610Trigger:OnPostDataPrepare()
    print("Q600610Trigger - OnPostDataPrepare")
    this = self
end

function Q600610Trigger:OnPostComponentPrepare()
    print("Q600610Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600610Trigger:TriggerIn()
    print("Q600610Trigger - TriggerIn")
    actorMgr:GetActor("6006"):TransmitPlayerWithQuestIdByData(600610, 2, datas.TransmitDataBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q600610Trigger:PreTriggerIn()
    print("Q600610Trigger - PreTriggerIn")
end

function Q600610Trigger:LightUpTriggerIn()
    print("Q600610Trigger - LightUpTriggerIn")
end

function Q600610Trigger:TriggerOut()
    print("Q600610Trigger - TriggerOut")
end

return Q600610Trigger
