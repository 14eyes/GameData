require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601504transmitTrigger = class("Q601504transmitTrigger", GadgetActorProxy)
Q601504transmitTrigger.defaultAlias = "Q601504transmitTrigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601504transmitTrigger:OnPostDataPrepare()
    print("Q601504transmitTrigger - OnPostDataPrepare")
    this = self
end

function Q601504transmitTrigger:OnPostComponentPrepare()
    print("Q601504transmitTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601504transmitTrigger:TriggerIn()
    print("Q601504transmitTrigger - TriggerIn")
    actorMgr:GetActor("6015"):TransmitPlayerWithQuestIdByData(601512, 1, datas.TransmitWithBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q601504transmitTrigger:PreTriggerIn()
    print("Q601504transmitTrigger - PreTriggerIn")
end

function Q601504transmitTrigger:LightUpTriggerIn()
    print("Q601504transmitTrigger - LightUpTriggerIn")
end

function Q601504transmitTrigger:TriggerOut()
    print("Q601504transmitTrigger - TriggerOut")
end

return Q601504transmitTrigger
