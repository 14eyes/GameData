require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503508Trigger = class("Q1503508Trigger", GadgetActorProxy)
Q1503508Trigger.defaultAlias = "Q1503508Trigger"
local Q15035ClientConfig = require("Quest/Client/Q15035ClientConfig")

local this
local subIDs = Q15035ClientConfig.SubIDs
local datas = Q15035ClientConfig.Datas
local npcs = Q15035ClientConfig.Npcs
local points = Q15035ClientConfig.Points

function Q1503508Trigger:OnPostDataPrepare()
    print("Q1503508Trigger - OnPostDataPrepare")
    this = self
end

function Q1503508Trigger:OnPostComponentPrepare()
    print("Q1503508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15035)
end

function Q1503508Trigger:TriggerIn()
    print("Q1503508Trigger - TriggerIn")
    actorMgr:GetActor("15035"):TransmitPlayerWithQuestIdByData(1503508, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503508Trigger:PreTriggerIn()
    print("Q1503508Trigger - PreTriggerIn")
end

function Q1503508Trigger:LightUpTriggerIn()
    print("Q1503508Trigger - LightUpTriggerIn")
end

function Q1503508Trigger:TriggerOut()
    print("Q1503508Trigger - TriggerOut")
end

return Q1503508Trigger
