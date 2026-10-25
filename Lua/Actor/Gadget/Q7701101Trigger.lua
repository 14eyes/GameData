require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701101Trigger = class("Q7701101Trigger", GadgetActorProxy)
Q7701101Trigger.defaultAlias = "Q7701101Trigger"
local Q77011ClientConfig = require("Quest/Client/Q77011ClientConfig")

local this
local subIDs = Q77011ClientConfig.SubIDs
local datas = Q77011ClientConfig.Datas
local npcs = Q77011ClientConfig.Npcs
local points = Q77011ClientConfig.Points

function Q7701101Trigger:OnPostDataPrepare()
    print("Q7701101Trigger - OnPostDataPrepare")
    this = self
end

function Q7701101Trigger:OnPostComponentPrepare()
    print("Q7701101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77011)
end

function Q7701101Trigger:TriggerIn()
    print("Q7701101Trigger - TriggerIn")
    actorMgr:GetActor("77011"):TransmitPlayerWithQuestIdByData(7701101, 1, datas.TransmitData_8, nil, nil, nil)
    this:DestroySelf()
end

function Q7701101Trigger:PreTriggerIn()
    print("Q7701101Trigger - PreTriggerIn")
end

function Q7701101Trigger:LightUpTriggerIn()
    print("Q7701101Trigger - LightUpTriggerIn")
end

function Q7701101Trigger:TriggerOut()
    print("Q7701101Trigger - TriggerOut")
end

return Q7701101Trigger
