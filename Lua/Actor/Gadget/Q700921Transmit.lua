require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700921Transmit = class("Q700921Transmit", GadgetActorProxy)
Q700921Transmit.defaultAlias = "Q700921Transmit"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700921Transmit:OnPostDataPrepare()
    print("Q700921Transmit - OnPostDataPrepare")
    this = self
end

function Q700921Transmit:OnPostComponentPrepare()
    print("Q700921Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700921Transmit:TriggerIn()
    print("Q700921Transmit - TriggerIn")
    actorMgr:GetActor("7009"):TransmitPlayerWithQuestIdByData(700921, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700921Transmit:PreTriggerIn()
    print("Q700921Transmit - PreTriggerIn")
end

function Q700921Transmit:LightUpTriggerIn()
    print("Q700921Transmit - LightUpTriggerIn")
end

function Q700921Transmit:TriggerOut()
    print("Q700921Transmit - TriggerOut")
end

return Q700921Transmit
