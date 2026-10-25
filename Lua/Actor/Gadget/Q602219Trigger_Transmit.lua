require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602219Trigger_Transmit = class("Q602219Trigger_Transmit", GadgetActorProxy)
Q602219Trigger_Transmit.defaultAlias = "Q602219Trigger_Transmit"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602219Trigger_Transmit:OnPostDataPrepare()
    print("Q602219Trigger_Transmit - OnPostDataPrepare")
    this = self
end

function Q602219Trigger_Transmit:OnPostComponentPrepare()
    print("Q602219Trigger_Transmit - OnPostComponentPrepare")
    this:AddComponentTrigger(120.23704, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602219Trigger_Transmit:TriggerIn()
    print("Q602219Trigger_Transmit - TriggerIn")
    actorMgr:GetActor("6022"):TransmitPlayerWithQuestIdByData(602219, 1, datas.GolumbiaTransmitDataOut, nil, nil, nil)
    this:DestroySelf()
end

function Q602219Trigger_Transmit:PreTriggerIn()
    print("Q602219Trigger_Transmit - PreTriggerIn")
end

function Q602219Trigger_Transmit:LightUpTriggerIn()
    print("Q602219Trigger_Transmit - LightUpTriggerIn")
end

function Q602219Trigger_Transmit:TriggerOut()
    print("Q602219Trigger_Transmit - TriggerOut")
end

return Q602219Trigger_Transmit
