require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503518Trigger = class("Q1503518Trigger", GadgetActorProxy)
Q1503518Trigger.defaultAlias = "Q1503518Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503518Trigger:OnPostDataPrepare()
    print("Q1503518Trigger - OnPostDataPrepare")
    this = self
end

function Q1503518Trigger:OnPostComponentPrepare()
    print("Q1503518Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503518Trigger:TriggerIn()
    print("Q1503518Trigger - TriggerIn")
    actorMgr:GetActor("15035"):TransmitPlayerWithQuestIdByData(1503518, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503518Trigger:PreTriggerIn()
    print("Q1503518Trigger - PreTriggerIn")
end

function Q1503518Trigger:LightUpTriggerIn()
    print("Q1503518Trigger - LightUpTriggerIn")
end

function Q1503518Trigger:TriggerOut()
    print("Q1503518Trigger - TriggerOut")
end

return Q1503518Trigger
