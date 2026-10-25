require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801708Transmit = class("Q801708Transmit", GadgetActorProxy)
Q801708Transmit.defaultAlias = "Q801708Transmit"
local Q8017ClientConfig = require("Quest/Client/Q8017ClientConfig")

local this
local subIDs = Q8017ClientConfig.SubIDs
local datas = Q8017ClientConfig.Datas
local npcs = Q8017ClientConfig.Npcs
local points = Q8017ClientConfig.Points

function Q801708Transmit:OnPostDataPrepare()
    print("Q801708Transmit - OnPostDataPrepare")
    this = self
end

function Q801708Transmit:OnPostComponentPrepare()
    print("Q801708Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8017)
end

function Q801708Transmit:TriggerIn()
    print("Q801708Transmit - TriggerIn")
    actorMgr:GetActor("8017"):TransmitPlayerWithQuestIdByData(801708, 1, datas.BlackTransmitData, nil, nil, nil)
end

function Q801708Transmit:PreTriggerIn()
    print("Q801708Transmit - PreTriggerIn")
end

function Q801708Transmit:LightUpTriggerIn()
    print("Q801708Transmit - LightUpTriggerIn")
end

function Q801708Transmit:TriggerOut()
    print("Q801708Transmit - TriggerOut")
end

return Q801708Transmit
