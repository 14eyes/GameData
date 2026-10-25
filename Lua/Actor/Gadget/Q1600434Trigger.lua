require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600434Trigger = class("Q1600434Trigger", GadgetActorProxy)
Q1600434Trigger.defaultAlias = "Q1600434Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600434Trigger:OnPostDataPrepare()
    print("Q1600434Trigger - OnPostDataPrepare")
    this = self
end

function Q1600434Trigger:OnPostComponentPrepare()
    print("Q1600434Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600434Trigger:TriggerIn()
    print("Q1600434Trigger - TriggerIn")
    actorMgr:GetActor("16004"):TransmitPlayerWithQuestIdByData(1600434, 1, datas.TransmitData_ToFinale, nil, nil, nil)
end

function Q1600434Trigger:PreTriggerIn()
    print("Q1600434Trigger - PreTriggerIn")
end

function Q1600434Trigger:LightUpTriggerIn()
    print("Q1600434Trigger - LightUpTriggerIn")
end

function Q1600434Trigger:TriggerOut()
    print("Q1600434Trigger - TriggerOut")
end

return Q1600434Trigger
