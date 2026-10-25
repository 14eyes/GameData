require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602345Trigger_Transmit2 = class("Q602345Trigger_Transmit2", GadgetActorProxy)
Q602345Trigger_Transmit2.defaultAlias = "Q602345Trigger_Transmit2"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602345Trigger_Transmit2:OnPostDataPrepare()
    print("Q602345Trigger_Transmit2 - OnPostDataPrepare")
    this = self
end

function Q602345Trigger_Transmit2:OnPostComponentPrepare()
    print("Q602345Trigger_Transmit2 - OnPostComponentPrepare")
    this:AddComponentTrigger(118.51285, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602345Trigger_Transmit2:TriggerIn()
    print("Q602345Trigger_Transmit2 - TriggerIn")
    actorMgr:GetActor("6023"):TransmitPlayerWithQuestIdByData(602345, 1, datas.GolumbiaTransmitDataOut, nil, nil, nil)
    this:DestroySelf()
end

function Q602345Trigger_Transmit2:PreTriggerIn()
    print("Q602345Trigger_Transmit2 - PreTriggerIn")
end

function Q602345Trigger_Transmit2:LightUpTriggerIn()
    print("Q602345Trigger_Transmit2 - LightUpTriggerIn")
end

function Q602345Trigger_Transmit2:TriggerOut()
    print("Q602345Trigger_Transmit2 - TriggerOut")
end

return Q602345Trigger_Transmit2
