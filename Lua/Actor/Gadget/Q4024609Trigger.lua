require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024609Trigger = class("Q4024609Trigger", GadgetActorProxy)
Q4024609Trigger.defaultAlias = "Q4024609Trigger"
local Q40246ClientConfig = require("Quest/Client/Q40246ClientConfig")

local this
local subIDs = Q40246ClientConfig.SubIDs
local datas = Q40246ClientConfig.Datas
local npcs = Q40246ClientConfig.Npcs
local points = Q40246ClientConfig.Points

function Q4024609Trigger:OnPostDataPrepare()
    print("Q4024609Trigger - OnPostDataPrepare")
    this = self
end

function Q4024609Trigger:OnPostComponentPrepare()
    print("Q4024609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40246)
end

function Q4024609Trigger:TriggerIn()
    print("Q4024609Trigger - TriggerIn")
    actorMgr:GetActor("40246"):TransmitPlayerWithQuestIdByData(4024610, 1, datas.TransmitDataNormal, nil, nil, nil)
    this:DestroySelf()
end

function Q4024609Trigger:PreTriggerIn()
    print("Q4024609Trigger - PreTriggerIn")
end

function Q4024609Trigger:LightUpTriggerIn()
    print("Q4024609Trigger - LightUpTriggerIn")
end

function Q4024609Trigger:TriggerOut()
    print("Q4024609Trigger - TriggerOut")
end

return Q4024609Trigger
