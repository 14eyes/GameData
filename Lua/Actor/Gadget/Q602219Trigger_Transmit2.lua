require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602219Trigger_Transmit2 = class("Q602219Trigger_Transmit2", GadgetActorProxy)
Q602219Trigger_Transmit2.defaultAlias = "Q602219Trigger_Transmit2"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602219Trigger_Transmit2:OnPostDataPrepare()
    print("Q602219Trigger_Transmit2 - OnPostDataPrepare")
    this = self
end

function Q602219Trigger_Transmit2:OnPostComponentPrepare()
    print("Q602219Trigger_Transmit2 - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602219Trigger_Transmit2:TriggerIn()
    print("Q602219Trigger_Transmit2 - TriggerIn")
    actorMgr:GetActor("6022"):TransmitPlayerWithQuestIdByData(602219, 1, datas.GolumbiaTransmitDataOut, nil, nil, nil)
    this:DestroySelf()
end

function Q602219Trigger_Transmit2:PreTriggerIn()
    print("Q602219Trigger_Transmit2 - PreTriggerIn")
end

function Q602219Trigger_Transmit2:LightUpTriggerIn()
    print("Q602219Trigger_Transmit2 - LightUpTriggerIn")
end

function Q602219Trigger_Transmit2:TriggerOut()
    print("Q602219Trigger_Transmit2 - TriggerOut")
end

return Q602219Trigger_Transmit2
