require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500310Transmit = class("Q500310Transmit", GadgetActorProxy)
Q500310Transmit.defaultAlias = "Q500310Transmit"
local Q5003ClientConfig = require("Quest/Client/Q5003ClientConfig")

local this
local subIDs = Q5003ClientConfig.SubIDs
local datas = Q5003ClientConfig.Datas
local npcs = Q5003ClientConfig.Npcs
local points = Q5003ClientConfig.Points

function Q500310Transmit:OnPostDataPrepare()
    print("Q500310Transmit - OnPostDataPrepare")
    this = self
end

function Q500310Transmit:OnPostComponentPrepare()
    print("Q500310Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5003)
end

function Q500310Transmit:TriggerIn()
    print("Q500310Transmit - TriggerIn")
    actorMgr:GetActor("5003"):TransmitPlayerWithQuestIdByData(500310, 1, datas.TransmitDataNoWord, nil, nil, nil)
    this:DestroySelf()
end

function Q500310Transmit:PreTriggerIn()
    print("Q500310Transmit - PreTriggerIn")
end

function Q500310Transmit:LightUpTriggerIn()
    print("Q500310Transmit - LightUpTriggerIn")
end

function Q500310Transmit:TriggerOut()
    print("Q500310Transmit - TriggerOut")
end

return Q500310Transmit
