require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601503TransmitTrigger = class("Q601503TransmitTrigger", GadgetActorProxy)
Q601503TransmitTrigger.defaultAlias = "Q601503TransmitTrigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601503TransmitTrigger:OnPostDataPrepare()
    print("Q601503TransmitTrigger - OnPostDataPrepare")
    this = self
end

function Q601503TransmitTrigger:OnPostComponentPrepare()
    print("Q601503TransmitTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601503TransmitTrigger:TriggerIn()
    print("Q601503TransmitTrigger - TriggerIn")
    actorMgr:GetActor("6015"):TransmitPlayerWithQuestIdByData(601503, 1, datas.Q601503Transmit, nil, nil, nil)
    this:DestroySelf()
end

function Q601503TransmitTrigger:PreTriggerIn()
    print("Q601503TransmitTrigger - PreTriggerIn")
end

function Q601503TransmitTrigger:LightUpTriggerIn()
    print("Q601503TransmitTrigger - LightUpTriggerIn")
end

function Q601503TransmitTrigger:TriggerOut()
    print("Q601503TransmitTrigger - TriggerOut")
end

return Q601503TransmitTrigger
