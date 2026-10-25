require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504410Trigger_Transmit = class("Q1504410Trigger_Transmit", GadgetActorProxy)
Q1504410Trigger_Transmit.defaultAlias = "Q1504410Trigger_Transmit"
local Q15044ClientConfig = require("Quest/Client/Q15044ClientConfig")

local this
local subIDs = Q15044ClientConfig.SubIDs
local datas = Q15044ClientConfig.Datas
local npcs = Q15044ClientConfig.Npcs
local points = Q15044ClientConfig.Points

function Q1504410Trigger_Transmit:OnPostDataPrepare()
    print("Q1504410Trigger_Transmit - OnPostDataPrepare")
    this = self
end

function Q1504410Trigger_Transmit:OnPostComponentPrepare()
    print("Q1504410Trigger_Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(39, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15044)
end

function Q1504410Trigger_Transmit:TriggerIn()
    print("Q1504410Trigger_Transmit - TriggerIn")
    actorMgr:GetActor("15044"):TransmitPlayerWithQuestIdByData(1504418, 1, datas.TransmitDataBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q1504410Trigger_Transmit:PreTriggerIn()
    print("Q1504410Trigger_Transmit - PreTriggerIn")
end

function Q1504410Trigger_Transmit:LightUpTriggerIn()
    print("Q1504410Trigger_Transmit - LightUpTriggerIn")
end

function Q1504410Trigger_Transmit:TriggerOut()
    print("Q1504410Trigger_Transmit - TriggerOut")
end

return Q1504410Trigger_Transmit
