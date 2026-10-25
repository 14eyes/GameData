require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603513Trigger = class("Q603513Trigger", GadgetActorProxy)
Q603513Trigger.defaultAlias = "Q603513Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603513Trigger:OnPostDataPrepare()
    print("Q603513Trigger - OnPostDataPrepare")
    this = self
end

function Q603513Trigger:OnPostComponentPrepare()
    print("Q603513Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603513Trigger:TriggerIn()
    print("Q603513Trigger - TriggerIn")
    actorMgr:GetActor("6035"):TransmitPlayerWithQuestIdByData(603513, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603513Trigger:PreTriggerIn()
    print("Q603513Trigger - PreTriggerIn")
end

function Q603513Trigger:LightUpTriggerIn()
    print("Q603513Trigger - LightUpTriggerIn")
end

function Q603513Trigger:TriggerOut()
    print("Q603513Trigger - TriggerOut")
end

return Q603513Trigger
