require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503605Trigger = class("Q1503605Trigger", GadgetActorProxy)
Q1503605Trigger.defaultAlias = "Q1503605Trigger"
local Q15036ClientConfig = require("Quest/Client/Q15036ClientConfig")

local this
local subIDs = Q15036ClientConfig.SubIDs
local datas = Q15036ClientConfig.Datas
local npcs = Q15036ClientConfig.Npcs
local points = Q15036ClientConfig.Points

function Q1503605Trigger:OnPostDataPrepare()
    print("Q1503605Trigger - OnPostDataPrepare")
    this = self
end

function Q1503605Trigger:OnPostComponentPrepare()
    print("Q1503605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15036)
end

function Q1503605Trigger:TriggerIn()
    print("Q1503605Trigger - TriggerIn")
    actorMgr:GetActor("15036"):TransmitPlayerWithQuestIdByData(1503605, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503605Trigger:PreTriggerIn()
    print("Q1503605Trigger - PreTriggerIn")
end

function Q1503605Trigger:LightUpTriggerIn()
    print("Q1503605Trigger - LightUpTriggerIn")
end

function Q1503605Trigger:TriggerOut()
    print("Q1503605Trigger - TriggerOut")
end

return Q1503605Trigger
