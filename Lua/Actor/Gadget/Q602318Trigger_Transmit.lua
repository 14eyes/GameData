require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602318Trigger_Transmit = class("Q602318Trigger_Transmit", GadgetActorProxy)
Q602318Trigger_Transmit.defaultAlias = "Q602318Trigger_Transmit"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602318Trigger_Transmit:OnPostDataPrepare()
    print("Q602318Trigger_Transmit - OnPostDataPrepare")
    this = self
end

function Q602318Trigger_Transmit:OnPostComponentPrepare()
    print("Q602318Trigger_Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602318Trigger_Transmit:TriggerIn()
    print("Q602318Trigger_Transmit - TriggerIn")
    actorMgr:GetActor("6023"):TransmitPlayerWithQuestIdByData(602318, 1, datas.GolumbiaTransmitDataIn, nil, nil, nil)
    this:DestroySelf()
end

function Q602318Trigger_Transmit:PreTriggerIn()
    print("Q602318Trigger_Transmit - PreTriggerIn")
end

function Q602318Trigger_Transmit:LightUpTriggerIn()
    print("Q602318Trigger_Transmit - LightUpTriggerIn")
end

function Q602318Trigger_Transmit:TriggerOut()
    print("Q602318Trigger_Transmit - TriggerOut")
end

return Q602318Trigger_Transmit
