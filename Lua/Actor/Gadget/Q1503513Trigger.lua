require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503513Trigger = class("Q1503513Trigger", GadgetActorProxy)
Q1503513Trigger.defaultAlias = "Q1503513Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503513Trigger:OnPostDataPrepare()
    print("Q1503513Trigger - OnPostDataPrepare")
    this = self
end

function Q1503513Trigger:OnPostComponentPrepare()
    print("Q1503513Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503513Trigger:TriggerIn()
    print("Q1503513Trigger - TriggerIn")
    actorMgr:GetActor("15035"):TransmitPlayerWithQuestIdByData(1503528, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503513Trigger:PreTriggerIn()
    print("Q1503513Trigger - PreTriggerIn")
end

function Q1503513Trigger:LightUpTriggerIn()
    print("Q1503513Trigger - LightUpTriggerIn")
end

function Q1503513Trigger:TriggerOut()
    print("Q1503513Trigger - TriggerOut")
end

return Q1503513Trigger
