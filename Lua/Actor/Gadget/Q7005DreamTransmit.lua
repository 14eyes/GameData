require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005DreamTransmit = class("Q7005DreamTransmit", GadgetActorProxy)
Q7005DreamTransmit.defaultAlias = "Q7005DreamTransmit"
local Q7005ClientConfig = require("Quest/Client/Q7005ClientConfig")

local this
local subIDs = Q7005ClientConfig.SubIDs
local datas = Q7005ClientConfig.Datas
local npcs = Q7005ClientConfig.Npcs
local points = Q7005ClientConfig.Points

function Q7005DreamTransmit:OnPostDataPrepare()
    print("Q7005DreamTransmit - OnPostDataPrepare")
    this = self
end

function Q7005DreamTransmit:OnPostComponentPrepare()
    print("Q7005DreamTransmit - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7005)
end

function Q7005DreamTransmit:TriggerIn()
    print("Q7005DreamTransmit - TriggerIn")
end

function Q7005DreamTransmit:PreTriggerIn()
    print("Q7005DreamTransmit - PreTriggerIn")
end

function Q7005DreamTransmit:LightUpTriggerIn()
    print("Q7005DreamTransmit - LightUpTriggerIn")
    actorMgr:GetActor("7005"):TransmitPlayerWithQuestIdByData(700516, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q7005DreamTransmit:TriggerOut()
    print("Q7005DreamTransmit - TriggerOut")
end

return Q7005DreamTransmit
