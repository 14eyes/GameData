require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700801Trigger = class("Q7700801Trigger", GadgetActorProxy)
Q7700801Trigger.defaultAlias = "Q7700801Trigger"
local Q77008ClientConfig = require("Quest/Client/Q77008ClientConfig")

local this
local subIDs = Q77008ClientConfig.SubIDs
local datas = Q77008ClientConfig.Datas
local npcs = Q77008ClientConfig.Npcs
local points = Q77008ClientConfig.Points

function Q7700801Trigger:OnPostDataPrepare()
    print("Q7700801Trigger - OnPostDataPrepare")
    this = self
end

function Q7700801Trigger:OnPostComponentPrepare()
    print("Q7700801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77008)
end

function Q7700801Trigger:TriggerIn()
    print("Q7700801Trigger - TriggerIn")
    actorMgr:GetActor("77008"):TransmitPlayerWithQuestIdByData(7700801, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q7700801Trigger:PreTriggerIn()
    print("Q7700801Trigger - PreTriggerIn")
end

function Q7700801Trigger:LightUpTriggerIn()
    print("Q7700801Trigger - LightUpTriggerIn")
end

function Q7700801Trigger:TriggerOut()
    print("Q7700801Trigger - TriggerOut")
end

return Q7700801Trigger
