require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600433Trigger = class("Q1600433Trigger", GadgetActorProxy)
Q1600433Trigger.defaultAlias = "Q1600433Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600433Trigger:OnPostDataPrepare()
    print("Q1600433Trigger - OnPostDataPrepare")
    this = self
end

function Q1600433Trigger:OnPostComponentPrepare()
    print("Q1600433Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600433Trigger:TriggerIn()
    print("Q1600433Trigger - TriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600433, 1, datas.TransmitData_ToReception, nil, nil, nil)
end

function Q1600433Trigger:PreTriggerIn()
    print("Q1600433Trigger - PreTriggerIn")
end

function Q1600433Trigger:LightUpTriggerIn()
    print("Q1600433Trigger - LightUpTriggerIn")
end

function Q1600433Trigger:TriggerOut()
    print("Q1600433Trigger - TriggerOut")
end

return Q1600433Trigger
