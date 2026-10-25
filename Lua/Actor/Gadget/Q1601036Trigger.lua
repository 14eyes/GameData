require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601036Trigger = class("Q1601036Trigger", GadgetActorProxy)
Q1601036Trigger.defaultAlias = "Q1601036Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601036Trigger:OnPostDataPrepare()
    print("Q1601036Trigger - OnPostDataPrepare")
    this = self
end

function Q1601036Trigger:OnPostComponentPrepare()
    print("Q1601036Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601036Trigger:TriggerIn()
    print("Q1601036Trigger - TriggerIn")
    actorMgr:GetActor("16010"):TransmitPlayerWithQuestIdByData(1601010, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q1601036Trigger:PreTriggerIn()
    print("Q1601036Trigger - PreTriggerIn")
end

function Q1601036Trigger:LightUpTriggerIn()
    print("Q1601036Trigger - LightUpTriggerIn")
end

function Q1601036Trigger:TriggerOut()
    print("Q1601036Trigger - TriggerOut")
end

return Q1601036Trigger
