require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700601TransmitOut = class("Q700601TransmitOut", GadgetActorProxy)
Q700601TransmitOut.defaultAlias = "Q700601TransmitOut"
local Q7006ClientConfig = require("Quest/Client/Q7006ClientConfig")

local this
local subIDs = Q7006ClientConfig.SubIDs
local datas = Q7006ClientConfig.Datas
local npcs = Q7006ClientConfig.Npcs
local points = Q7006ClientConfig.Points

function Q700601TransmitOut:OnPostDataPrepare()
    print("Q700601TransmitOut - OnPostDataPrepare")
    this = self
end

function Q700601TransmitOut:OnPostComponentPrepare()
    print("Q700601TransmitOut - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7006)
end

function Q700601TransmitOut:TriggerIn()
    print("Q700601TransmitOut - TriggerIn")
end

function Q700601TransmitOut:PreTriggerIn()
    print("Q700601TransmitOut - PreTriggerIn")
end

function Q700601TransmitOut:LightUpTriggerIn()
    print("Q700601TransmitOut - LightUpTriggerIn")
    actorMgr:GetActor("7006"):TransmitPlayerWithQuestIdByData(700601, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700601TransmitOut:TriggerOut()
    print("Q700601TransmitOut - TriggerOut")
end

return Q700601TransmitOut
