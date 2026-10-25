require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q03315transmit = class("Q03315transmit", GadgetActorProxy)
Q03315transmit.defaultAlias = "Q03315transmit"
local Q5033ClientConfig = require("Quest/Client/Q5033ClientConfig")

local this
local subIDs = Q5033ClientConfig.SubIDs
local datas = Q5033ClientConfig.Datas
local npcs = Q5033ClientConfig.Npcs
local points = Q5033ClientConfig.Points

function Q03315transmit:OnPostDataPrepare()
    print("Q03315transmit - OnPostDataPrepare")
    this = self
end

function Q03315transmit:OnPostComponentPrepare()
    print("Q03315transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5033)
end

function Q03315transmit:TriggerIn()
    print("Q03315transmit - TriggerIn")
    actorMgr:GetActor("5033"):TransmitPlayerWithQuestIdByData(503316, 1, datas.TransmitData_NowordNoSound, nil, nil, nil)
    this:DestroySelf()
end

function Q03315transmit:PreTriggerIn()
    print("Q03315transmit - PreTriggerIn")
end

function Q03315transmit:LightUpTriggerIn()
    print("Q03315transmit - LightUpTriggerIn")
end

function Q03315transmit:TriggerOut()
    print("Q03315transmit - TriggerOut")
end

return Q03315transmit
