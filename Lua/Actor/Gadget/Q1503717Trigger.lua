require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503717Trigger = class("Q1503717Trigger", GadgetActorProxy)
Q1503717Trigger.defaultAlias = "Q1503717Trigger"
local Q15037ClientConfig = require("Quest/Client/Q15037ClientConfig")

local this
local subIDs = Q15037ClientConfig.SubIDs
local datas = Q15037ClientConfig.Datas
local npcs = Q15037ClientConfig.Npcs
local points = Q15037ClientConfig.Points

function Q1503717Trigger:OnPostDataPrepare()
    print("Q1503717Trigger - OnPostDataPrepare")
    this = self
end

function Q1503717Trigger:OnPostComponentPrepare()
    print("Q1503717Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15037)
end

function Q1503717Trigger:TriggerIn()
    print("Q1503717Trigger - TriggerIn")
    actorMgr:GetActor("15037"):TransmitPlayerWithQuestIdByData(1503717, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1503717Trigger:PreTriggerIn()
    print("Q1503717Trigger - PreTriggerIn")
end

function Q1503717Trigger:LightUpTriggerIn()
    print("Q1503717Trigger - LightUpTriggerIn")
end

function Q1503717Trigger:TriggerOut()
    print("Q1503717Trigger - TriggerOut")
end

return Q1503717Trigger
