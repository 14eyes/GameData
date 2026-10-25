require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801811transmit = class("Q801811transmit", GadgetActorProxy)
Q801811transmit.defaultAlias = "Q801811transmit"
local Q8018ClientConfig = require("Quest/Client/Q8018ClientConfig")

local this
local subIDs = Q8018ClientConfig.SubIDs
local datas = Q8018ClientConfig.Datas
local npcs = Q8018ClientConfig.Npcs
local points = Q8018ClientConfig.Points

function Q801811transmit:OnPostDataPrepare()
    print("Q801811transmit - OnPostDataPrepare")
    this = self
end

function Q801811transmit:OnPostComponentPrepare()
    print("Q801811transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8018)
end

function Q801811transmit:TriggerIn()
    print("Q801811transmit - TriggerIn")
    actorMgr:GetActor("8018"):TransmitPlayerWithQuestIdByData(801811, 1, datas.BlackTransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q801811transmit:PreTriggerIn()
    print("Q801811transmit - PreTriggerIn")
end

function Q801811transmit:LightUpTriggerIn()
    print("Q801811transmit - LightUpTriggerIn")
end

function Q801811transmit:TriggerOut()
    print("Q801811transmit - TriggerOut")
end

return Q801811transmit
