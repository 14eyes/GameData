require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601515Transmit = class("Q601515Transmit", GadgetActorProxy)
Q601515Transmit.defaultAlias = "Q601515Transmit"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601515Transmit:OnPostDataPrepare()
    print("Q601515Transmit - OnPostDataPrepare")
    this = self
end

function Q601515Transmit:OnPostComponentPrepare()
    print("Q601515Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601515Transmit:TriggerIn()
    print("Q601515Transmit - TriggerIn")
    actorMgr:GetActor("6015"):TransmitPlayerWithQuestIdByData(601515, 1, datas.TransmitWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q601515Transmit:PreTriggerIn()
    print("Q601515Transmit - PreTriggerIn")
end

function Q601515Transmit:LightUpTriggerIn()
    print("Q601515Transmit - LightUpTriggerIn")
end

function Q601515Transmit:TriggerOut()
    print("Q601515Transmit - TriggerOut")
end

return Q601515Transmit
