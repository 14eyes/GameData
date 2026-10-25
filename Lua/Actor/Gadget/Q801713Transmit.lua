require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801713Transmit = class("Q801713Transmit", GadgetActorProxy)
Q801713Transmit.defaultAlias = "Q801713Transmit"
local Q8017ClientConfig = require("Quest/Client/Q8017ClientConfig")

local this
local subIDs = Q8017ClientConfig.SubIDs
local datas = Q8017ClientConfig.Datas
local npcs = Q8017ClientConfig.Npcs
local points = Q8017ClientConfig.Points

function Q801713Transmit:OnPostDataPrepare()
    print("Q801713Transmit - OnPostDataPrepare")
    this = self
end

function Q801713Transmit:OnPostComponentPrepare()
    print("Q801713Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8017)
end

function Q801713Transmit:TriggerIn()
    print("Q801713Transmit - TriggerIn")
    actorMgr:GetActor("8017"):TransmitPlayerWithQuestIdByData(801713, 1, datas.BlackTransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q801713Transmit:PreTriggerIn()
    print("Q801713Transmit - PreTriggerIn")
end

function Q801713Transmit:LightUpTriggerIn()
    print("Q801713Transmit - LightUpTriggerIn")
end

function Q801713Transmit:TriggerOut()
    print("Q801713Transmit - TriggerOut")
end

return Q801713Transmit
