require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503523Trigger = class("Q1503523Trigger", GadgetActorProxy)
Q1503523Trigger.defaultAlias = "Q1503523Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503523Trigger:OnPostDataPrepare()
    print("Q1503523Trigger - OnPostDataPrepare")
    this = self
end

function Q1503523Trigger:OnPostComponentPrepare()
    print("Q1503523Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503523Trigger:TriggerIn()
    print("Q1503523Trigger - TriggerIn")
    actorMgr:GetActor("15035"):TransmitPlayerWithQuestIdByData(1503523, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q1503523Trigger:PreTriggerIn()
    print("Q1503523Trigger - PreTriggerIn")
end

function Q1503523Trigger:LightUpTriggerIn()
    print("Q1503523Trigger - LightUpTriggerIn")
end

function Q1503523Trigger:TriggerOut()
    print("Q1503523Trigger - TriggerOut")
end

return Q1503523Trigger
