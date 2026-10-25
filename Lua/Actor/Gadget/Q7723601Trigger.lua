require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723601Trigger = class("Q7723601Trigger", GadgetActorProxy)
Q7723601Trigger.defaultAlias = "Q7723601Trigger"
local Q77236ClientConfig = require("Quest/Client/Q77236ClientConfig")

local this
local subIDs = Q77236ClientConfig.SubIDs
local datas = Q77236ClientConfig.Datas
local npcs = Q77236ClientConfig.Npcs
local points = Q77236ClientConfig.Points

function Q7723601Trigger:OnPostDataPrepare()
    print("Q7723601Trigger - OnPostDataPrepare")
    this = self
end

function Q7723601Trigger:OnPostComponentPrepare()
    print("Q7723601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77236)
end

function Q7723601Trigger:TriggerIn()
    print("Q7723601Trigger - TriggerIn")
    actorMgr:GetActor("77236"):TransmitPlayerWithQuestIdByData(7723601, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q7723601Trigger:PreTriggerIn()
    print("Q7723601Trigger - PreTriggerIn")
end

function Q7723601Trigger:LightUpTriggerIn()
    print("Q7723601Trigger - LightUpTriggerIn")
end

function Q7723601Trigger:TriggerOut()
    print("Q7723601Trigger - TriggerOut")
end

return Q7723601Trigger
