require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603502Trigger = class("Q603502Trigger", GadgetActorProxy)
Q603502Trigger.defaultAlias = "Q603502Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603502Trigger:OnPostDataPrepare()
    print("Q603502Trigger - OnPostDataPrepare")
    this = self
end

function Q603502Trigger:OnPostComponentPrepare()
    print("Q603502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603502Trigger:TriggerIn()
    print("Q603502Trigger - TriggerIn")
    actorMgr:GetActor("6035"):TransmitPlayerWithQuestIdByData(603502, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603502Trigger:PreTriggerIn()
    print("Q603502Trigger - PreTriggerIn")
end

function Q603502Trigger:LightUpTriggerIn()
    print("Q603502Trigger - LightUpTriggerIn")
end

function Q603502Trigger:TriggerOut()
    print("Q603502Trigger - TriggerOut")
end

return Q603502Trigger
