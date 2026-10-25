require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503808Trigger = class("Q1503808Trigger", GadgetActorProxy)
Q1503808Trigger.defaultAlias = "Q1503808Trigger"
local Q15038ClientConfig = require("Quest/Client/Q15038ClientConfig")

local this
local subIDs = Q15038ClientConfig.SubIDs
local datas = Q15038ClientConfig.Datas
local npcs = Q15038ClientConfig.Npcs
local points = Q15038ClientConfig.Points

function Q1503808Trigger:OnPostDataPrepare()
    print("Q1503808Trigger - OnPostDataPrepare")
    this = self
end

function Q1503808Trigger:OnPostComponentPrepare()
    print("Q1503808Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15038)
end

function Q1503808Trigger:TriggerIn()
    print("Q1503808Trigger - TriggerIn")
    actorMgr:GetActor("15038"):TransmitPlayerWithQuestIdByData(1503808, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503808Trigger:PreTriggerIn()
    print("Q1503808Trigger - PreTriggerIn")
end

function Q1503808Trigger:LightUpTriggerIn()
    print("Q1503808Trigger - LightUpTriggerIn")
end

function Q1503808Trigger:TriggerOut()
    print("Q1503808Trigger - TriggerOut")
end

return Q1503808Trigger
