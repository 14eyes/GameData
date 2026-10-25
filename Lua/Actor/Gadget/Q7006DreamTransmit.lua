require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006DreamTransmit = class("Q7006DreamTransmit", GadgetActorProxy)
Q7006DreamTransmit.defaultAlias = "Q7006DreamTransmit"
local Q7006ClientConfig = require("Quest/Client/Q7006ClientConfig")

local this
local subIDs = Q7006ClientConfig.SubIDs
local datas = Q7006ClientConfig.Datas
local npcs = Q7006ClientConfig.Npcs
local points = Q7006ClientConfig.Points

function Q7006DreamTransmit:OnPostDataPrepare()
    print("Q7006DreamTransmit - OnPostDataPrepare")
    this = self
end

function Q7006DreamTransmit:OnPostComponentPrepare()
    print("Q7006DreamTransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7006)
end

function Q7006DreamTransmit:TriggerIn()
    print("Q7006DreamTransmit - TriggerIn")
end

function Q7006DreamTransmit:PreTriggerIn()
    print("Q7006DreamTransmit - PreTriggerIn")
end

function Q7006DreamTransmit:LightUpTriggerIn()
    print("Q7006DreamTransmit - LightUpTriggerIn")
    actorMgr:GetActor("7006"):TransmitPlayerWithQuestIdByData(700606, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q7006DreamTransmit:TriggerOut()
    print("Q7006DreamTransmit - TriggerOut")
end

return Q7006DreamTransmit
