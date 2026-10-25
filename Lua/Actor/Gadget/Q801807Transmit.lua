require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801807Transmit = class("Q801807Transmit", GadgetActorProxy)
Q801807Transmit.defaultAlias = "Q801807Transmit"
local Q8018ClientConfig = require("Quest/Client/Q8018ClientConfig")

local this
local subIDs = Q8018ClientConfig.SubIDs
local datas = Q8018ClientConfig.Datas
local npcs = Q8018ClientConfig.Npcs
local points = Q8018ClientConfig.Points

function Q801807Transmit:OnPostDataPrepare()
    print("Q801807Transmit - OnPostDataPrepare")
    this = self
end

function Q801807Transmit:OnPostComponentPrepare()
    print("Q801807Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8018)
end

function Q801807Transmit:TriggerIn()
    print("Q801807Transmit - TriggerIn")
    actorMgr:GetActor("8018"):TransmitPlayerWithQuestIdByData(801807, 1, datas.BlackTransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q801807Transmit:PreTriggerIn()
    print("Q801807Transmit - PreTriggerIn")
end

function Q801807Transmit:LightUpTriggerIn()
    print("Q801807Transmit - LightUpTriggerIn")
end

function Q801807Transmit:TriggerOut()
    print("Q801807Transmit - TriggerOut")
end

return Q801807Transmit
