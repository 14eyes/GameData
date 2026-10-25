require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700909Transmit = class("Q700909Transmit", GadgetActorProxy)
Q700909Transmit.defaultAlias = "Q700909Transmit"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700909Transmit:OnPostDataPrepare()
    print("Q700909Transmit - OnPostDataPrepare")
    this = self
end

function Q700909Transmit:OnPostComponentPrepare()
    print("Q700909Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700909Transmit:TriggerIn()
    print("Q700909Transmit - TriggerIn")
    actorMgr:GetActor("7009"):TransmitPlayerWithQuestIdByData(700909, 1, datas.TransmitDataWithDream, nil, nil, nil)
    this:DestroySelf()
end

function Q700909Transmit:PreTriggerIn()
    print("Q700909Transmit - PreTriggerIn")
end

function Q700909Transmit:LightUpTriggerIn()
    print("Q700909Transmit - LightUpTriggerIn")
end

function Q700909Transmit:TriggerOut()
    print("Q700909Transmit - TriggerOut")
end

return Q700909Transmit
