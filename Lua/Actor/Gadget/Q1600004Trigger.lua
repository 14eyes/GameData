require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600004Trigger = class("Q1600004Trigger", GadgetActorProxy)
Q1600004Trigger.defaultAlias = "Q1600004Trigger"
local Q16000ClientConfig = require("Quest/Client/Q16000ClientConfig")

local this
local subIDs = Q16000ClientConfig.SubIDs
local datas = Q16000ClientConfig.Datas
local npcs = Q16000ClientConfig.Npcs
local points = Q16000ClientConfig.Points

function Q1600004Trigger:OnPostDataPrepare()
    print("Q1600004Trigger - OnPostDataPrepare")
    this = self
end

function Q1600004Trigger:OnPostComponentPrepare()
    print("Q1600004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16000)
end

function Q1600004Trigger:TriggerIn()
    print("Q1600004Trigger - TriggerIn")
    actorMgr:GetActor("16000"):TransmitPlayerWithQuestIdByData(1600004, 1, datas.TransmitData_FromReception, nil, nil, nil)
end

function Q1600004Trigger:PreTriggerIn()
    print("Q1600004Trigger - PreTriggerIn")
end

function Q1600004Trigger:LightUpTriggerIn()
    print("Q1600004Trigger - LightUpTriggerIn")
end

function Q1600004Trigger:TriggerOut()
    print("Q1600004Trigger - TriggerOut")
end

return Q1600004Trigger
