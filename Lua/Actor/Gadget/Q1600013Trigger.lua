require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600013Trigger = class("Q1600013Trigger", GadgetActorProxy)
Q1600013Trigger.defaultAlias = "Q1600013Trigger"
local Q16000ClientConfig = require("Quest/Client/Q16000ClientConfig")

local this
local subIDs = Q16000ClientConfig.SubIDs
local datas = Q16000ClientConfig.Datas
local npcs = Q16000ClientConfig.Npcs
local points = Q16000ClientConfig.Points

function Q1600013Trigger:OnPostDataPrepare()
    print("Q1600013Trigger - OnPostDataPrepare")
    this = self
end

function Q1600013Trigger:OnPostComponentPrepare()
    print("Q1600013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16000)
end

function Q1600013Trigger:TriggerIn()
    print("Q1600013Trigger - TriggerIn")
end

function Q1600013Trigger:PreTriggerIn()
    print("Q1600013Trigger - PreTriggerIn")
    actorMgr:GetActor("16000"):TransmitPlayerWithQuestIdByData(1600013, 1, datas.TransmitData_FromNursery, nil, nil, nil)
end

function Q1600013Trigger:LightUpTriggerIn()
    print("Q1600013Trigger - LightUpTriggerIn")
end

function Q1600013Trigger:TriggerOut()
    print("Q1600013Trigger - TriggerOut")
end

return Q1600013Trigger
