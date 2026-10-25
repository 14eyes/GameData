require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601038Trigger = class("Q1601038Trigger", GadgetActorProxy)
Q1601038Trigger.defaultAlias = "Q1601038Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601038Trigger:OnPostDataPrepare()
    print("Q1601038Trigger - OnPostDataPrepare")
    this = self
end

function Q1601038Trigger:OnPostComponentPrepare()
    print("Q1601038Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601038Trigger:TriggerIn()
    print("Q1601038Trigger - TriggerIn")
    actorMgr:GetActor("16010"):TransmitPlayerWithQuestIdByData(1601025, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1601038Trigger:PreTriggerIn()
    print("Q1601038Trigger - PreTriggerIn")
end

function Q1601038Trigger:LightUpTriggerIn()
    print("Q1601038Trigger - LightUpTriggerIn")
end

function Q1601038Trigger:TriggerOut()
    print("Q1601038Trigger - TriggerOut")
end

return Q1601038Trigger
