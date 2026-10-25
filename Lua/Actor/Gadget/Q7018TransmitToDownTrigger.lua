require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7018TransmitToDownTrigger = class("Q7018TransmitToDownTrigger", GadgetActorProxy)
Q7018TransmitToDownTrigger.defaultAlias = "Q7018TransmitToDownTrigger"
local Q7018ClientConfig = require("Quest/Client/Q7018ClientConfig")

local this
local subIDs = Q7018ClientConfig.SubIDs
local datas = Q7018ClientConfig.Datas
local npcs = Q7018ClientConfig.Npcs
local points = Q7018ClientConfig.Points

function Q7018TransmitToDownTrigger:OnPostDataPrepare()
    print("Q7018TransmitToDownTrigger - OnPostDataPrepare")
    this = self
end

function Q7018TransmitToDownTrigger:OnPostComponentPrepare()
    print("Q7018TransmitToDownTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7018)
end

function Q7018TransmitToDownTrigger:TriggerIn()
    print("Q7018TransmitToDownTrigger - TriggerIn")
    actorMgr:GetActor("7018"):TransmitPlayerWithQuestIdByData(701804, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q7018TransmitToDownTrigger:PreTriggerIn()
    print("Q7018TransmitToDownTrigger - PreTriggerIn")
end

function Q7018TransmitToDownTrigger:LightUpTriggerIn()
    print("Q7018TransmitToDownTrigger - LightUpTriggerIn")
end

function Q7018TransmitToDownTrigger:TriggerOut()
    print("Q7018TransmitToDownTrigger - TriggerOut")
end

return Q7018TransmitToDownTrigger
