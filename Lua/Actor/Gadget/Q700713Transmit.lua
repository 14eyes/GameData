require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700713Transmit = class("Q700713Transmit", GadgetActorProxy)
Q700713Transmit.defaultAlias = "Q700713Transmit"
local Q7007ClientConfig = require("Quest/Client/Q7007ClientConfig")

local this
local subIDs = Q7007ClientConfig.SubIDs
local datas = Q7007ClientConfig.Datas
local npcs = Q7007ClientConfig.Npcs
local points = Q7007ClientConfig.Points

function Q700713Transmit:OnPostDataPrepare()
    print("Q700713Transmit - OnPostDataPrepare")
    this = self
end

function Q700713Transmit:OnPostComponentPrepare()
    print("Q700713Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7007)
end

function Q700713Transmit:TriggerIn()
    print("Q700713Transmit - TriggerIn")
    actorMgr:GetActor("7007"):TransmitPlayerByData(quest, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q700713Transmit:PreTriggerIn()
    print("Q700713Transmit - PreTriggerIn")
end

function Q700713Transmit:LightUpTriggerIn()
    print("Q700713Transmit - LightUpTriggerIn")
end

function Q700713Transmit:TriggerOut()
    print("Q700713Transmit - TriggerOut")
end

return Q700713Transmit
