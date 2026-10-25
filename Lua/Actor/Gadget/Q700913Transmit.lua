require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700913Transmit = class("Q700913Transmit", GadgetActorProxy)
Q700913Transmit.defaultAlias = "Q700913Transmit"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700913Transmit:OnPostDataPrepare()
    print("Q700913Transmit - OnPostDataPrepare")
    this = self
end

function Q700913Transmit:OnPostComponentPrepare()
    print("Q700913Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700913Transmit:TriggerIn()
    print("Q700913Transmit - TriggerIn")
end

function Q700913Transmit:PreTriggerIn()
    print("Q700913Transmit - PreTriggerIn")
end

function Q700913Transmit:LightUpTriggerIn()
    print("Q700913Transmit - LightUpTriggerIn")
    actorMgr:GetActor("7009"):TransmitPlayerWithQuestIdByData(700913, 1, datas.TransmitDataWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q700913Transmit:TriggerOut()
    print("Q700913Transmit - TriggerOut")
end

return Q700913Transmit
