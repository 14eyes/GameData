require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700606Transmit = class("Q700606Transmit", GadgetActorProxy)
Q700606Transmit.defaultAlias = "Q700606Transmit"
local Q7006ClientConfig = require("Quest/Client/Q7006ClientConfig")

local this
local subIDs = Q7006ClientConfig.SubIDs
local datas = Q7006ClientConfig.Datas
local npcs = Q7006ClientConfig.Npcs
local points = Q7006ClientConfig.Points

function Q700606Transmit:OnPostDataPrepare()
    print("Q700606Transmit - OnPostDataPrepare")
    this = self
end

function Q700606Transmit:OnPostComponentPrepare()
    print("Q700606Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7006)
end

function Q700606Transmit:TriggerIn()
    print("Q700606Transmit - TriggerIn")
    actorMgr:GetActor("7006"):TransmitPlayerWithQuestIdByData(700606, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700606Transmit:PreTriggerIn()
    print("Q700606Transmit - PreTriggerIn")
end

function Q700606Transmit:LightUpTriggerIn()
    print("Q700606Transmit - LightUpTriggerIn")
end

function Q700606Transmit:TriggerOut()
    print("Q700606Transmit - TriggerOut")
end

return Q700606Transmit
